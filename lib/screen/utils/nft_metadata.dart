import 'dart:typed_data';

import 'package:flutter_web3/flutter_web3.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:nftrenter/screen/utils/interfaces.dart';

class NFTMetadata {
  Interfaces inter = Interfaces();
  http.Client httpClient = http.Client();
  Future<Map> getMetadataFromToken(String erc721, String token) async {
    var result = await inter.erc721(erc721).call<String>('tokenURI', [token]);
    var metadata = await getMetadataFromUrl(result);
    return metadata;
  }

  Future<Map> getMetadataFromUrl(String ipfsurl) async {
    var url = ipfsurl.replaceFirst(r'ipfs://', r'https://ipfs.io/ipfs/');
    var resp = await httpClient.get(Uri.parse(url));
    var json = convert.jsonDecode(resp.body) as Map;
    var imageUrl = json["image"]
        .toString()
        .replaceFirst(r'ipfs://', r'https://ipfs.io/ipfs/')
        .replaceFirst('.json', '.png');
    var imgresp = await httpClient.get(Uri.parse(imageUrl));
    
    return {
      "png": Uint8List.fromList(imgresp.body.codeUnits),
      "name": json["name"],
      "description": json["desription"]
    };
  }
}

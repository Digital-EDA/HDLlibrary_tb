module atan (
        input        clka,
        input        rsta,
        input  [8:0] addra,
        output [8:0] douta
    );

    reg [8:0] douta_buf;
    always @(posedge clka) begin
        if (rsta) begin
            douta_buf <= 0;
        end
        else begin            
            case (addra)
                9'h000: douta_buf <= 9'h000000000;
                9'h001: douta_buf <= 9'h000000001;
                9'h002: douta_buf <= 9'h000000010;
                9'h003: douta_buf <= 9'h000000011;
                9'h004: douta_buf <= 9'h000000100;
                9'h005: douta_buf <= 9'h000000101;
                9'h006: douta_buf <= 9'h000000110;
                9'h007: douta_buf <= 9'h000000111;
                9'h008: douta_buf <= 9'h000001000;
                9'h009: douta_buf <= 9'h000001001;
                9'h00a: douta_buf <= 9'h000001010;
                9'h00b: douta_buf <= 9'h000001011;
                9'h00c: douta_buf <= 9'h000001100;
                9'h00d: douta_buf <= 9'h000001101;
                9'h00e: douta_buf <= 9'h000001110;
                9'h00f: douta_buf <= 9'h000001111;
                9'h010: douta_buf <= 9'h000010000;
                9'h011: douta_buf <= 9'h000010001;
                9'h012: douta_buf <= 9'h000010010;
                9'h013: douta_buf <= 9'h000010011;
                9'h014: douta_buf <= 9'h000010100;
                9'h015: douta_buf <= 9'h000010101;
                9'h016: douta_buf <= 9'h000010110;
                9'h017: douta_buf <= 9'h000010111;
                9'h018: douta_buf <= 9'h000011000;
                9'h019: douta_buf <= 9'h000011001;
                9'h01a: douta_buf <= 9'h000011010;
                9'h01b: douta_buf <= 9'h000011011;
                9'h01c: douta_buf <= 9'h000011100;
                9'h01d: douta_buf <= 9'h000011101;
                9'h01e: douta_buf <= 9'h000011110;
                9'h01f: douta_buf <= 9'h000011111;
                9'h020: douta_buf <= 9'h000100000;
                9'h021: douta_buf <= 9'h000100001;
                9'h022: douta_buf <= 9'h000100010;
                9'h023: douta_buf <= 9'h000100011;
                9'h024: douta_buf <= 9'h000100100;
                9'h025: douta_buf <= 9'h000100101;
                9'h026: douta_buf <= 9'h000100110;
                9'h027: douta_buf <= 9'h000100111;
                9'h028: douta_buf <= 9'h000101000;
                9'h029: douta_buf <= 9'h000101001;
                9'h02a: douta_buf <= 9'h000101010;
                9'h02b: douta_buf <= 9'h000101011;
                9'h02c: douta_buf <= 9'h000101100;
                9'h02d: douta_buf <= 9'h000101101;
                9'h02e: douta_buf <= 9'h000101110;
                9'h02f: douta_buf <= 9'h000101111;
                9'h030: douta_buf <= 9'h000110000;
                9'h031: douta_buf <= 9'h000110001;
                9'h032: douta_buf <= 9'h000110010;
                9'h033: douta_buf <= 9'h000110011;
                9'h034: douta_buf <= 9'h000110100;
                9'h035: douta_buf <= 9'h000110101;
                9'h036: douta_buf <= 9'h000110110;
                9'h037: douta_buf <= 9'h000110111;
                9'h038: douta_buf <= 9'h000111000;
                9'h039: douta_buf <= 9'h000111001;
                9'h03a: douta_buf <= 9'h000111010;
                9'h03b: douta_buf <= 9'h000111011;
                9'h03c: douta_buf <= 9'h000111100;
                9'h03d: douta_buf <= 9'h000111101;
                9'h03e: douta_buf <= 9'h000111110;
                9'h03f: douta_buf <= 9'h000111111;
                9'h040: douta_buf <= 9'h001000000;
                9'h041: douta_buf <= 9'h001000001;
                9'h042: douta_buf <= 9'h001000010;
                9'h043: douta_buf <= 9'h001000011;
                9'h044: douta_buf <= 9'h001000100;
                9'h045: douta_buf <= 9'h001000101;
                9'h046: douta_buf <= 9'h001000110;
                9'h047: douta_buf <= 9'h001000111;
                9'h048: douta_buf <= 9'h001001000;
                9'h049: douta_buf <= 9'h001001001;
                9'h04a: douta_buf <= 9'h001001001;
                9'h04b: douta_buf <= 9'h001001010;
                9'h04c: douta_buf <= 9'h001001011;
                9'h04d: douta_buf <= 9'h001001100;
                9'h04e: douta_buf <= 9'h001001101;
                9'h04f: douta_buf <= 9'h001001110;
                9'h050: douta_buf <= 9'h001001111;
                9'h051: douta_buf <= 9'h001010000;
                9'h052: douta_buf <= 9'h001010001;
                9'h053: douta_buf <= 9'h001010010;
                9'h054: douta_buf <= 9'h001010011;
                9'h055: douta_buf <= 9'h001010100;
                9'h056: douta_buf <= 9'h001010101;
                9'h057: douta_buf <= 9'h001010110;
                9'h058: douta_buf <= 9'h001010111;
                9'h059: douta_buf <= 9'h001011000;
                9'h05a: douta_buf <= 9'h001011001;
                9'h05b: douta_buf <= 9'h001011010;
                9'h05c: douta_buf <= 9'h001011011;
                9'h05d: douta_buf <= 9'h001011100;
                9'h05e: douta_buf <= 9'h001011101;
                9'h05f: douta_buf <= 9'h001011110;
                9'h060: douta_buf <= 9'h001011111;
                9'h061: douta_buf <= 9'h001100000;
                9'h062: douta_buf <= 9'h001100001;
                9'h063: douta_buf <= 9'h001100010;
                9'h064: douta_buf <= 9'h001100011;
                9'h065: douta_buf <= 9'h001100100;
                9'h066: douta_buf <= 9'h001100101;
                9'h067: douta_buf <= 9'h001100110;
                9'h068: douta_buf <= 9'h001100111;
                9'h069: douta_buf <= 9'h001101000;
                9'h06a: douta_buf <= 9'h001101001;
                9'h06b: douta_buf <= 9'h001101001;
                9'h06c: douta_buf <= 9'h001101010;
                9'h06d: douta_buf <= 9'h001101011;
                9'h06e: douta_buf <= 9'h001101100;
                9'h06f: douta_buf <= 9'h001101101;
                9'h070: douta_buf <= 9'h001101110;
                9'h071: douta_buf <= 9'h001101111;
                9'h072: douta_buf <= 9'h001110000;
                9'h073: douta_buf <= 9'h001110001;
                9'h074: douta_buf <= 9'h001110010;
                9'h075: douta_buf <= 9'h001110011;
                9'h076: douta_buf <= 9'h001110100;
                9'h077: douta_buf <= 9'h001110101;
                9'h078: douta_buf <= 9'h001110110;
                9'h079: douta_buf <= 9'h001110111;
                9'h07a: douta_buf <= 9'h001111000;
                9'h07b: douta_buf <= 9'h001111001;
                9'h07c: douta_buf <= 9'h001111010;
                9'h07d: douta_buf <= 9'h001111011;
                9'h07e: douta_buf <= 9'h001111100;
                9'h07f: douta_buf <= 9'h001111100;
                9'h080: douta_buf <= 9'h001111101;
                9'h081: douta_buf <= 9'h001111110;
                9'h082: douta_buf <= 9'h001111111;
                9'h083: douta_buf <= 9'h010000000;
                9'h084: douta_buf <= 9'h010000001;
                9'h085: douta_buf <= 9'h010000010;
                9'h086: douta_buf <= 9'h010000011;
                9'h087: douta_buf <= 9'h010000100;
                9'h088: douta_buf <= 9'h010000101;
                9'h089: douta_buf <= 9'h010000110;
                9'h08a: douta_buf <= 9'h010000111;
                9'h08b: douta_buf <= 9'h010001000;
                9'h08c: douta_buf <= 9'h010001001;
                9'h08d: douta_buf <= 9'h010001010;
                9'h08e: douta_buf <= 9'h010001011;
                9'h08f: douta_buf <= 9'h010001011;
                9'h090: douta_buf <= 9'h010001100;
                9'h091: douta_buf <= 9'h010001101;
                9'h092: douta_buf <= 9'h010001110;
                9'h093: douta_buf <= 9'h010001111;
                9'h094: douta_buf <= 9'h010010000;
                9'h095: douta_buf <= 9'h010010001;
                9'h096: douta_buf <= 9'h010010010;
                9'h097: douta_buf <= 9'h010010011;
                9'h098: douta_buf <= 9'h010010100;
                9'h099: douta_buf <= 9'h010010101;
                9'h09a: douta_buf <= 9'h010010110;
                9'h09b: douta_buf <= 9'h010010111;
                9'h09c: douta_buf <= 9'h010010111;
                9'h09d: douta_buf <= 9'h010011000;
                9'h09e: douta_buf <= 9'h010011001;
                9'h09f: douta_buf <= 9'h010011010;
                9'h0a0: douta_buf <= 9'h010011011;
                9'h0a1: douta_buf <= 9'h010011100;
                9'h0a2: douta_buf <= 9'h010011101;
                9'h0a3: douta_buf <= 9'h010011110;
                9'h0a4: douta_buf <= 9'h010011111;
                9'h0a5: douta_buf <= 9'h010100000;
                9'h0a6: douta_buf <= 9'h010100001;
                9'h0a7: douta_buf <= 9'h010100001;
                9'h0a8: douta_buf <= 9'h010100010;
                9'h0a9: douta_buf <= 9'h010100011;
                9'h0aa: douta_buf <= 9'h010100100;
                9'h0ab: douta_buf <= 9'h010100101;
                9'h0ac: douta_buf <= 9'h010100110;
                9'h0ad: douta_buf <= 9'h010100111;
                9'h0ae: douta_buf <= 9'h010101000;
                9'h0af: douta_buf <= 9'h010101001;
                9'h0b0: douta_buf <= 9'h010101010;
                9'h0b1: douta_buf <= 9'h010101010;
                9'h0b2: douta_buf <= 9'h010101011;
                9'h0b3: douta_buf <= 9'h010101100;
                9'h0b4: douta_buf <= 9'h010101101;
                9'h0b5: douta_buf <= 9'h010101110;
                9'h0b6: douta_buf <= 9'h010101111;
                9'h0b7: douta_buf <= 9'h010110000;
                9'h0b8: douta_buf <= 9'h010110001;
                9'h0b9: douta_buf <= 9'h010110010;
                9'h0ba: douta_buf <= 9'h010110010;
                9'h0bb: douta_buf <= 9'h010110011;
                9'h0bc: douta_buf <= 9'h010110100;
                9'h0bd: douta_buf <= 9'h010110101;
                9'h0be: douta_buf <= 9'h010110110;
                9'h0bf: douta_buf <= 9'h010110111;
                9'h0c0: douta_buf <= 9'h010111000;
                9'h0c1: douta_buf <= 9'h010111001;
                9'h0c2: douta_buf <= 9'h010111001;
                9'h0c3: douta_buf <= 9'h010111010;
                9'h0c4: douta_buf <= 9'h010111011;
                9'h0c5: douta_buf <= 9'h010111100;
                9'h0c6: douta_buf <= 9'h010111101;
                9'h0c7: douta_buf <= 9'h010111110;
                9'h0c8: douta_buf <= 9'h010111111;
                9'h0c9: douta_buf <= 9'h011000000;
                9'h0ca: douta_buf <= 9'h011000000;
                9'h0cb: douta_buf <= 9'h011000001;
                9'h0cc: douta_buf <= 9'h011000010;
                9'h0cd: douta_buf <= 9'h011000011;
                9'h0ce: douta_buf <= 9'h011000100;
                9'h0cf: douta_buf <= 9'h011000101;
                9'h0d0: douta_buf <= 9'h011000110;
                9'h0d1: douta_buf <= 9'h011000110;
                9'h0d2: douta_buf <= 9'h011000111;
                9'h0d3: douta_buf <= 9'h011001000;
                9'h0d4: douta_buf <= 9'h011001001;
                9'h0d5: douta_buf <= 9'h011001010;
                9'h0d6: douta_buf <= 9'h011001011;
                9'h0d7: douta_buf <= 9'h011001100;
                9'h0d8: douta_buf <= 9'h011001100;
                9'h0d9: douta_buf <= 9'h011001101;
                9'h0da: douta_buf <= 9'h011001110;
                9'h0db: douta_buf <= 9'h011001111;
                9'h0dc: douta_buf <= 9'h011010000;
                9'h0dd: douta_buf <= 9'h011010001;
                9'h0de: douta_buf <= 9'h011010001;
                9'h0df: douta_buf <= 9'h011010010;
                9'h0e0: douta_buf <= 9'h011010011;
                9'h0e1: douta_buf <= 9'h011010100;
                9'h0e2: douta_buf <= 9'h011010101;
                9'h0e3: douta_buf <= 9'h011010110;
                9'h0e4: douta_buf <= 9'h011010111;
                9'h0e5: douta_buf <= 9'h011010111;
                9'h0e6: douta_buf <= 9'h011011000;
                9'h0e7: douta_buf <= 9'h011011001;
                9'h0e8: douta_buf <= 9'h011011010;
                9'h0e9: douta_buf <= 9'h011011011;
                9'h0ea: douta_buf <= 9'h011011011;
                9'h0eb: douta_buf <= 9'h011011100;
                9'h0ec: douta_buf <= 9'h011011101;
                9'h0ed: douta_buf <= 9'h011011110;
                9'h0ee: douta_buf <= 9'h011011111;
                9'h0ef: douta_buf <= 9'h011100000;
                9'h0f0: douta_buf <= 9'h011100000;
                9'h0f1: douta_buf <= 9'h011100001;
                9'h0f2: douta_buf <= 9'h011100010;
                9'h0f3: douta_buf <= 9'h011100011;
                9'h0f4: douta_buf <= 9'h011100100;
                9'h0f5: douta_buf <= 9'h011100101;
                9'h0f6: douta_buf <= 9'h011100101;
                9'h0f7: douta_buf <= 9'h011100110;
                9'h0f8: douta_buf <= 9'h011100111;
                9'h0f9: douta_buf <= 9'h011101000;
                9'h0fa: douta_buf <= 9'h011101001;
                9'h0fb: douta_buf <= 9'h011101001;
                9'h0fc: douta_buf <= 9'h011101010;
                9'h0fd: douta_buf <= 9'h011101011;
                9'h0fe: douta_buf <= 9'h011101100;
                9'h0ff: douta_buf <= 9'h011101101;
                9'h100: douta_buf <= 9'h011101101;
                9'h101: douta_buf <= 9'h011101110;
                9'h102: douta_buf <= 9'h011101111;
                9'h103: douta_buf <= 9'h011110000;
                9'h104: douta_buf <= 9'h011110001;
                9'h105: douta_buf <= 9'h011110001;
                9'h106: douta_buf <= 9'h011110010;
                9'h107: douta_buf <= 9'h011110011;
                9'h108: douta_buf <= 9'h011110100;
                9'h109: douta_buf <= 9'h011110101;
                9'h10a: douta_buf <= 9'h011110101;
                9'h10b: douta_buf <= 9'h011110110;
                9'h10c: douta_buf <= 9'h011110111;
                9'h10d: douta_buf <= 9'h011111000;
                9'h10e: douta_buf <= 9'h011111000;
                9'h10f: douta_buf <= 9'h011111001;
                9'h110: douta_buf <= 9'h011111010;
                9'h111: douta_buf <= 9'h011111011;
                9'h112: douta_buf <= 9'h011111100;
                9'h113: douta_buf <= 9'h011111100;
                9'h114: douta_buf <= 9'h011111101;
                9'h115: douta_buf <= 9'h011111110;
                9'h116: douta_buf <= 9'h011111111;
                9'h117: douta_buf <= 9'h011111111;
                9'h118: douta_buf <= 9'h100000000;
                9'h119: douta_buf <= 9'h100000001;
                9'h11a: douta_buf <= 9'h100000010;
                9'h11b: douta_buf <= 9'h100000011;
                9'h11c: douta_buf <= 9'h100000011;
                9'h11d: douta_buf <= 9'h100000100;
                9'h11e: douta_buf <= 9'h100000101;
                9'h11f: douta_buf <= 9'h100000110;
                9'h120: douta_buf <= 9'h100000110;
                9'h121: douta_buf <= 9'h100000111;
                9'h122: douta_buf <= 9'h100001000;
                9'h123: douta_buf <= 9'h100001001;
                9'h124: douta_buf <= 9'h100001001;
                9'h125: douta_buf <= 9'h100001010;
                9'h126: douta_buf <= 9'h100001011;
                9'h127: douta_buf <= 9'h100001100;
                9'h128: douta_buf <= 9'h100001100;
                9'h129: douta_buf <= 9'h100001101;
                9'h12a: douta_buf <= 9'h100001110;
                9'h12b: douta_buf <= 9'h100001111;
                9'h12c: douta_buf <= 9'h100001111;
                9'h12d: douta_buf <= 9'h100010000;
                9'h12e: douta_buf <= 9'h100010001;
                9'h12f: douta_buf <= 9'h100010010;
                9'h130: douta_buf <= 9'h100010010;
                9'h131: douta_buf <= 9'h100010011;
                9'h132: douta_buf <= 9'h100010100;
                9'h133: douta_buf <= 9'h100010101;
                9'h134: douta_buf <= 9'h100010101;
                9'h135: douta_buf <= 9'h100010110;
                9'h136: douta_buf <= 9'h100010111;
                9'h137: douta_buf <= 9'h100010111;
                9'h138: douta_buf <= 9'h100011000;
                9'h139: douta_buf <= 9'h100011001;
                9'h13a: douta_buf <= 9'h100011010;
                9'h13b: douta_buf <= 9'h100011010;
                9'h13c: douta_buf <= 9'h100011011;
                9'h13d: douta_buf <= 9'h100011100;
                9'h13e: douta_buf <= 9'h100011101;
                9'h13f: douta_buf <= 9'h100011101;
                9'h140: douta_buf <= 9'h100011110;
                9'h141: douta_buf <= 9'h100011111;
                9'h142: douta_buf <= 9'h100011111;
                9'h143: douta_buf <= 9'h100100000;
                9'h144: douta_buf <= 9'h100100001;
                9'h145: douta_buf <= 9'h100100010;
                9'h146: douta_buf <= 9'h100100010;
                9'h147: douta_buf <= 9'h100100011;
                9'h148: douta_buf <= 9'h100100100;
                9'h149: douta_buf <= 9'h100100100;
                9'h14a: douta_buf <= 9'h100100101;
                9'h14b: douta_buf <= 9'h100100110;
                9'h14c: douta_buf <= 9'h100100111;
                9'h14d: douta_buf <= 9'h100100111;
                9'h14e: douta_buf <= 9'h100101000;
                9'h14f: douta_buf <= 9'h100101001;
                9'h150: douta_buf <= 9'h100101001;
                9'h151: douta_buf <= 9'h100101010;
                9'h152: douta_buf <= 9'h100101011;
                9'h153: douta_buf <= 9'h100101011;
                9'h154: douta_buf <= 9'h100101100;
                9'h155: douta_buf <= 9'h100101101;
                9'h156: douta_buf <= 9'h100101110;
                9'h157: douta_buf <= 9'h100101110;
                9'h158: douta_buf <= 9'h100101111;
                9'h159: douta_buf <= 9'h100110000;
                9'h15a: douta_buf <= 9'h100110000;
                9'h15b: douta_buf <= 9'h100110001;
                9'h15c: douta_buf <= 9'h100110010;
                9'h15d: douta_buf <= 9'h100110010;
                9'h15e: douta_buf <= 9'h100110011;
                9'h15f: douta_buf <= 9'h100110100;
                9'h160: douta_buf <= 9'h100110100;
                9'h161: douta_buf <= 9'h100110101;
                9'h162: douta_buf <= 9'h100110110;
                9'h163: douta_buf <= 9'h100110110;
                9'h164: douta_buf <= 9'h100110111;
                9'h165: douta_buf <= 9'h100111000;
                9'h166: douta_buf <= 9'h100111000;
                9'h167: douta_buf <= 9'h100111001;
                9'h168: douta_buf <= 9'h100111010;
                9'h169: douta_buf <= 9'h100111010;
                9'h16a: douta_buf <= 9'h100111011;
                9'h16b: douta_buf <= 9'h100111100;
                9'h16c: douta_buf <= 9'h100111100;
                9'h16d: douta_buf <= 9'h100111101;
                9'h16e: douta_buf <= 9'h100111110;
                9'h16f: douta_buf <= 9'h100111110;
                9'h170: douta_buf <= 9'h100111111;
                9'h171: douta_buf <= 9'h101000000;
                9'h172: douta_buf <= 9'h101000000;
                9'h173: douta_buf <= 9'h101000001;
                9'h174: douta_buf <= 9'h101000010;
                9'h175: douta_buf <= 9'h101000010;
                9'h176: douta_buf <= 9'h101000011;
                9'h177: douta_buf <= 9'h101000100;
                9'h178: douta_buf <= 9'h101000100;
                9'h179: douta_buf <= 9'h101000101;
                9'h17a: douta_buf <= 9'h101000110;
                9'h17b: douta_buf <= 9'h101000110;
                9'h17c: douta_buf <= 9'h101000111;
                9'h17d: douta_buf <= 9'h101001000;
                9'h17e: douta_buf <= 9'h101001000;
                9'h17f: douta_buf <= 9'h101001001;
                9'h180: douta_buf <= 9'h101001001;
                9'h181: douta_buf <= 9'h101001010;
                9'h182: douta_buf <= 9'h101001011;
                9'h183: douta_buf <= 9'h101001011;
                9'h184: douta_buf <= 9'h101001100;
                9'h185: douta_buf <= 9'h101001101;
                9'h186: douta_buf <= 9'h101001101;
                9'h187: douta_buf <= 9'h101001110;
                9'h188: douta_buf <= 9'h101001111;
                9'h189: douta_buf <= 9'h101001111;
                9'h18a: douta_buf <= 9'h101010000;
                9'h18b: douta_buf <= 9'h101010000;
                9'h18c: douta_buf <= 9'h101010001;
                9'h18d: douta_buf <= 9'h101010010;
                9'h18e: douta_buf <= 9'h101010010;
                9'h18f: douta_buf <= 9'h101010011;
                9'h190: douta_buf <= 9'h101010100;
                9'h191: douta_buf <= 9'h101010100;
                9'h192: douta_buf <= 9'h101010101;
                9'h193: douta_buf <= 9'h101010101;
                9'h194: douta_buf <= 9'h101010110;
                9'h195: douta_buf <= 9'h101010111;
                9'h196: douta_buf <= 9'h101010111;
                9'h197: douta_buf <= 9'h101011000;
                9'h198: douta_buf <= 9'h101011000;
                9'h199: douta_buf <= 9'h101011001;
                9'h19a: douta_buf <= 9'h101011010;
                9'h19b: douta_buf <= 9'h101011010;
                9'h19c: douta_buf <= 9'h101011011;
                9'h19d: douta_buf <= 9'h101011100;
                9'h19e: douta_buf <= 9'h101011100;
                9'h19f: douta_buf <= 9'h101011101;
                9'h1a0: douta_buf <= 9'h101011101;
                9'h1a1: douta_buf <= 9'h101011110;
                9'h1a2: douta_buf <= 9'h101011111;
                9'h1a3: douta_buf <= 9'h101011111;
                9'h1a4: douta_buf <= 9'h101100000;
                9'h1a5: douta_buf <= 9'h101100000;
                9'h1a6: douta_buf <= 9'h101100001;
                9'h1a7: douta_buf <= 9'h101100010;
                9'h1a8: douta_buf <= 9'h101100010;
                9'h1a9: douta_buf <= 9'h101100011;
                9'h1aa: douta_buf <= 9'h101100011;
                9'h1ab: douta_buf <= 9'h101100100;
                9'h1ac: douta_buf <= 9'h101100100;
                9'h1ad: douta_buf <= 9'h101100101;
                9'h1ae: douta_buf <= 9'h101100110;
                9'h1af: douta_buf <= 9'h101100110;
                9'h1b0: douta_buf <= 9'h101100111;
                9'h1b1: douta_buf <= 9'h101100111;
                9'h1b2: douta_buf <= 9'h101101000;
                9'h1b3: douta_buf <= 9'h101101001;
                9'h1b4: douta_buf <= 9'h101101001;
                9'h1b5: douta_buf <= 9'h101101010;
                9'h1b6: douta_buf <= 9'h101101010;
                9'h1b7: douta_buf <= 9'h101101011;
                9'h1b8: douta_buf <= 9'h101101011;
                9'h1b9: douta_buf <= 9'h101101100;
                9'h1ba: douta_buf <= 9'h101101101;
                9'h1bb: douta_buf <= 9'h101101101;
                9'h1bc: douta_buf <= 9'h101101110;
                9'h1bd: douta_buf <= 9'h101101110;
                9'h1be: douta_buf <= 9'h101101111;
                9'h1bf: douta_buf <= 9'h101101111;
                9'h1c0: douta_buf <= 9'h101110000;
                9'h1c1: douta_buf <= 9'h101110001;
                9'h1c2: douta_buf <= 9'h101110001;
                9'h1c3: douta_buf <= 9'h101110010;
                9'h1c4: douta_buf <= 9'h101110010;
                9'h1c5: douta_buf <= 9'h101110011;
                9'h1c6: douta_buf <= 9'h101110011;
                9'h1c7: douta_buf <= 9'h101110100;
                9'h1c8: douta_buf <= 9'h101110101;
                9'h1c9: douta_buf <= 9'h101110101;
                9'h1ca: douta_buf <= 9'h101110110;
                9'h1cb: douta_buf <= 9'h101110110;
                9'h1cc: douta_buf <= 9'h101110111;
                9'h1cd: douta_buf <= 9'h101110111;
                9'h1ce: douta_buf <= 9'h101111000;
                9'h1cf: douta_buf <= 9'h101111000;
                9'h1d0: douta_buf <= 9'h101111001;
                9'h1d1: douta_buf <= 9'h101111010;
                9'h1d2: douta_buf <= 9'h101111010;
                9'h1d3: douta_buf <= 9'h101111011;
                9'h1d4: douta_buf <= 9'h101111011;
                9'h1d5: douta_buf <= 9'h101111100;
                9'h1d6: douta_buf <= 9'h101111100;
                9'h1d7: douta_buf <= 9'h101111101;
                9'h1d8: douta_buf <= 9'h101111101;
                9'h1d9: douta_buf <= 9'h101111110;
                9'h1da: douta_buf <= 9'h101111110;
                9'h1db: douta_buf <= 9'h101111111;
                9'h1dc: douta_buf <= 9'h101111111;
                9'h1dd: douta_buf <= 9'h110000000;
                9'h1de: douta_buf <= 9'h110000001;
                9'h1df: douta_buf <= 9'h110000001;
                9'h1e0: douta_buf <= 9'h110000010;
                9'h1e1: douta_buf <= 9'h110000010;
                9'h1e2: douta_buf <= 9'h110000011;
                9'h1e3: douta_buf <= 9'h110000011;
                9'h1e4: douta_buf <= 9'h110000100;
                9'h1e5: douta_buf <= 9'h110000100;
                9'h1e6: douta_buf <= 9'h110000101;
                9'h1e7: douta_buf <= 9'h110000101;
                9'h1e8: douta_buf <= 9'h110000110;
                9'h1e9: douta_buf <= 9'h110000110;
                9'h1ea: douta_buf <= 9'h110000111;
                9'h1eb: douta_buf <= 9'h110000111;
                9'h1ec: douta_buf <= 9'h110001000;
                9'h1ed: douta_buf <= 9'h110001000;
                9'h1ee: douta_buf <= 9'h110001001;
                9'h1ef: douta_buf <= 9'h110001001;
                9'h1f0: douta_buf <= 9'h110001010;
                9'h1f1: douta_buf <= 9'h110001011;
                9'h1f2: douta_buf <= 9'h110001011;
                9'h1f3: douta_buf <= 9'h110001100;
                9'h1f4: douta_buf <= 9'h110001100;
                9'h1f5: douta_buf <= 9'h110001101;
                9'h1f6: douta_buf <= 9'h110001101;
                9'h1f7: douta_buf <= 9'h110001110;
                9'h1f8: douta_buf <= 9'h110001110;
                9'h1f9: douta_buf <= 9'h110001111;
                9'h1fa: douta_buf <= 9'h110001111;
                9'h1fb: douta_buf <= 9'h110010000;
                9'h1fc: douta_buf <= 9'h110010000;
                9'h1fd: douta_buf <= 9'h110010001;
                9'h1fe: douta_buf <= 9'h110010001;
                9'h1ff: douta_buf <= 9'h110010010;
            endcase
        end
    end

    assign douta = douta_buf;
endmodule

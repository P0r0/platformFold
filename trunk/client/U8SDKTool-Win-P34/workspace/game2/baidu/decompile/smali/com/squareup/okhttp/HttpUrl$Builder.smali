.class public final Lcom/squareup/okhttp/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/HttpUrl$Builder$ParseResult;
    }
.end annotation


# instance fields
.field encodedFragment:Ljava/lang/String;

.field encodedPassword:Ljava/lang/String;

.field final encodedPathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedQueryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedUsername:Ljava/lang/String;

.field host:Ljava/lang/String;

.field port:I

.field scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    const-string v0, ""

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 650
    const-string v0, ""

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 652
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->port:I

    .line 653
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    .line 658
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    return-void
.end method

.method private static canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
    .registers 8
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 1230
    invoke-static {p0, p1, p2}, Lcom/squareup/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 1233
    .local v2, "percentDecoded":Ljava/lang/String;
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1234
    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/squareup/okhttp/HttpUrl$Builder;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v1

    .line 1235
    .local v1, "inetAddress":Ljava/net/InetAddress;
    if-nez v1, :cond_23

    const/4 v3, 0x0

    .line 1241
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :goto_22
    return-object v3

    .line 1236
    .restart local v1    # "inetAddress":Ljava/net/InetAddress;
    :cond_23
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1237
    .local v0, "address":[B
    array-length v3, v0

    const/16 v4, 0x10

    if-ne v3, v4, :cond_31

    invoke-static {v0}, Lcom/squareup/okhttp/HttpUrl$Builder;->inet6AddressToAscii([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    .line 1238
    :cond_31
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1241
    .end local v0    # "address":[B
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :cond_37
    invoke-static {v2}, Lcom/squareup/okhttp/HttpUrl$Builder;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_22
.end method

.method private static containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .registers 6
    .param p0, "hostnameAscii"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1375
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_21

    .line 1376
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1380
    .local v0, "c":C
    const/16 v3, 0x1f

    if-le v0, v3, :cond_14

    const/16 v3, 0x7f

    if-lt v0, v3, :cond_15

    .line 1390
    .end local v0    # "c":C
    :cond_14
    :goto_14
    return v2

    .line 1386
    .restart local v0    # "c":C
    :cond_15
    const-string v3, " #%/:?@[\\]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_14

    .line 1375
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1390
    .end local v0    # "c":C
    :cond_21
    const/4 v2, 0x0

    goto :goto_14
.end method

.method private static decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .registers 15
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "address"    # [B
    .param p4, "addressOffset"    # I

    .prologue
    const/4 v7, 0x0

    .line 1318
    move v0, p4

    .line 1320
    .local v0, "b":I
    move v5, p1

    .local v5, "i":I
    move v1, v0

    .end local v0    # "b":I
    .local v1, "b":I
    :goto_4
    if-ge v5, p2, :cond_41

    .line 1321
    array-length v8, p3

    if-ne v1, v8, :cond_a

    .line 1347
    :cond_9
    :goto_9
    return v7

    .line 1324
    :cond_a
    if-eq v1, p4, :cond_16

    .line 1325
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_9

    .line 1326
    add-int/lit8 v5, v5, 0x1

    .line 1330
    :cond_16
    const/4 v6, 0x0

    .line 1331
    .local v6, "value":I
    move v4, v5

    .line 1332
    .local v4, "groupOffset":I
    :goto_18
    if-ge v5, p2, :cond_26

    .line 1333
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1334
    .local v2, "c":C
    const/16 v8, 0x30

    if-lt v2, v8, :cond_26

    const/16 v8, 0x39

    if-le v2, v8, :cond_31

    .line 1339
    .end local v2    # "c":C
    :cond_26
    sub-int v3, v5, v4

    .line 1340
    .local v3, "groupLength":I
    if-eqz v3, :cond_9

    .line 1343
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "b":I
    .restart local v0    # "b":I
    int-to-byte v8, v6

    aput-byte v8, p3, v1

    move v1, v0

    .line 1344
    .end local v0    # "b":I
    .restart local v1    # "b":I
    goto :goto_4

    .line 1335
    .end local v3    # "groupLength":I
    .restart local v2    # "c":C
    :cond_31
    if-nez v6, :cond_35

    if-ne v4, v5, :cond_9

    .line 1336
    :cond_35
    mul-int/lit8 v8, v6, 0xa

    add-int/2addr v8, v2

    add-int/lit8 v6, v8, -0x30

    .line 1337
    const/16 v8, 0xff

    if-gt v6, v8, :cond_9

    .line 1332
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 1346
    .end local v2    # "c":C
    .end local v4    # "groupOffset":I
    .end local v6    # "value":I
    :cond_41
    add-int/lit8 v8, p4, 0x4

    if-ne v1, v8, :cond_9

    .line 1347
    const/4 v7, 0x1

    goto :goto_9
.end method

.method private static decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .registers 18
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 1246
    const/16 v12, 0x10

    new-array v1, v12, [B

    .line 1247
    .local v1, "address":[B
    const/4 v2, 0x0

    .line 1248
    .local v2, "b":I
    const/4 v5, -0x1

    .line 1249
    .local v5, "compress":I
    const/4 v8, -0x1

    .line 1251
    .local v8, "groupOffset":I
    move/from16 v10, p1

    .local v10, "i":I
    :goto_9
    move/from16 v0, p2

    if-ge v10, v0, :cond_30

    .line 1252
    array-length v12, v1

    if-ne v2, v12, :cond_12

    const/4 v12, 0x0

    .line 1309
    :goto_11
    return-object v12

    .line 1255
    :cond_12
    add-int/lit8 v12, v10, 0x2

    move/from16 v0, p2

    if-gt v12, v0, :cond_38

    const-string v12, "::"

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-virtual {p0, v10, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_38

    .line 1257
    const/4 v12, -0x1

    if-eq v5, v12, :cond_27

    const/4 v12, 0x0

    goto :goto_11

    .line 1258
    :cond_27
    add-int/lit8 v10, v10, 0x2

    .line 1259
    add-int/lit8 v2, v2, 0x2

    .line 1260
    move v5, v2

    .line 1261
    move/from16 v0, p2

    if-ne v10, v0, :cond_46

    .line 1302
    :cond_30
    :goto_30
    array-length v12, v1

    if-eq v2, v12, :cond_a4

    .line 1303
    const/4 v12, -0x1

    if-ne v5, v12, :cond_94

    const/4 v12, 0x0

    goto :goto_11

    .line 1262
    :cond_38
    if-eqz v2, :cond_46

    .line 1264
    const-string v12, ":"

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {p0, v10, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_60

    .line 1265
    add-int/lit8 v10, v10, 0x1

    .line 1277
    :cond_46
    const/4 v11, 0x0

    .line 1278
    .local v11, "value":I
    move v8, v10

    .line 1279
    :goto_48
    move/from16 v0, p2

    if-ge v10, v0, :cond_57

    .line 1280
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1281
    .local v4, "c":C
    invoke-static {v4}, Lcom/squareup/okhttp/HttpUrl;->decodeHexDigit(C)I

    move-result v9

    .line 1282
    .local v9, "hexDigit":I
    const/4 v12, -0x1

    if-ne v9, v12, :cond_7b

    .line 1285
    .end local v4    # "c":C
    .end local v9    # "hexDigit":I
    :cond_57
    sub-int v7, v10, v8

    .line 1286
    .local v7, "groupLength":I
    if-eqz v7, :cond_5e

    const/4 v12, 0x4

    if-le v7, v12, :cond_82

    :cond_5e
    const/4 v12, 0x0

    goto :goto_11

    .line 1266
    .end local v7    # "groupLength":I
    .end local v11    # "value":I
    :cond_60
    const-string v12, "."

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {p0, v10, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_79

    .line 1268
    add-int/lit8 v12, v2, -0x2

    move/from16 v0, p2

    invoke-static {p0, v8, v0, v1, v12}, Lcom/squareup/okhttp/HttpUrl$Builder;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result v12

    if-nez v12, :cond_76

    const/4 v12, 0x0

    goto :goto_11

    .line 1269
    :cond_76
    add-int/lit8 v2, v2, 0x2

    .line 1270
    goto :goto_30

    .line 1272
    :cond_79
    const/4 v12, 0x0

    goto :goto_11

    .line 1283
    .restart local v4    # "c":C
    .restart local v9    # "hexDigit":I
    .restart local v11    # "value":I
    :cond_7b
    shl-int/lit8 v12, v11, 0x4

    add-int v11, v12, v9

    .line 1279
    add-int/lit8 v10, v10, 0x1

    goto :goto_48

    .line 1289
    .end local v4    # "c":C
    .end local v9    # "hexDigit":I
    .restart local v7    # "groupLength":I
    :cond_82
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "b":I
    .local v3, "b":I
    ushr-int/lit8 v12, v11, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v2

    .line 1290
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "b":I
    .restart local v2    # "b":I
    and-int/lit16 v12, v11, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    goto/16 :goto_9

    .line 1304
    .end local v7    # "groupLength":I
    .end local v11    # "value":I
    :cond_94
    array-length v12, v1

    sub-int v13, v2, v5

    sub-int/2addr v12, v13

    sub-int v13, v2, v5

    invoke-static {v1, v5, v1, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1305
    array-length v12, v1

    sub-int/2addr v12, v2

    add-int/2addr v12, v5

    const/4 v13, 0x0

    invoke-static {v1, v5, v12, v13}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1309
    :cond_a4
    :try_start_a4
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_a7
    .catch Ljava/net/UnknownHostException; {:try_start_a4 .. :try_end_a7} :catch_aa

    move-result-object v12

    goto/16 :goto_11

    .line 1310
    :catch_aa
    move-exception v6

    .line 1311
    .local v6, "e":Ljava/net/UnknownHostException;
    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12
.end method

.method private static domainToAscii(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1358
    :try_start_1
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1359
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_13

    move-object v1, v2

    .line 1370
    .end local v1    # "result":Ljava/lang/String;
    :cond_12
    :goto_12
    return-object v1

    .line 1361
    .restart local v1    # "result":Ljava/lang/String;
    :cond_13
    if-nez v1, :cond_17

    move-object v1, v2

    goto :goto_12

    .line 1364
    :cond_17
    invoke-static {v1}, Lcom/squareup/okhttp/HttpUrl$Builder;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1a} :catch_1f

    move-result v3

    if-eqz v3, :cond_12

    move-object v1, v2

    .line 1365
    goto :goto_12

    .line 1369
    .end local v1    # "result":Ljava/lang/String;
    :catch_1f
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    move-object v1, v2

    .line 1370
    goto :goto_12
.end method

.method private static inet6AddressToAscii([B)Ljava/lang/String;
    .registers 13
    .param p0, "address"    # [B

    .prologue
    const/16 v11, 0x10

    const/16 v10, 0x3a

    .line 1395
    const/4 v5, -0x1

    .line 1396
    .local v5, "longestRunOffset":I
    const/4 v4, 0x0

    .line 1397
    .local v4, "longestRunLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    array-length v7, p0

    if-ge v3, v7, :cond_23

    .line 1398
    move v1, v3

    .line 1399
    .local v1, "currentRunOffset":I
    :goto_b
    if-ge v3, v11, :cond_1a

    aget-byte v7, p0, v3

    if-nez v7, :cond_1a

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, p0, v7

    if-nez v7, :cond_1a

    .line 1400
    add-int/lit8 v3, v3, 0x2

    goto :goto_b

    .line 1402
    :cond_1a
    sub-int v0, v3, v1

    .line 1403
    .local v0, "currentRunLength":I
    if-le v0, v4, :cond_20

    .line 1404
    move v5, v1

    .line 1405
    move v4, v0

    .line 1397
    :cond_20
    add-int/lit8 v3, v3, 0x2

    goto :goto_7

    .line 1410
    .end local v0    # "currentRunLength":I
    .end local v1    # "currentRunOffset":I
    :cond_23
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    .line 1411
    .local v6, "result":Lokio/Buffer;
    const/4 v3, 0x0

    :cond_29
    :goto_29
    array-length v7, p0

    if-ge v3, v7, :cond_52

    .line 1412
    if-ne v3, v5, :cond_38

    .line 1413
    invoke-virtual {v6, v10}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1414
    add-int/2addr v3, v4

    .line 1415
    if-ne v3, v11, :cond_29

    invoke-virtual {v6, v10}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_29

    .line 1417
    :cond_38
    if-lez v3, :cond_3d

    invoke-virtual {v6, v10}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1418
    :cond_3d
    aget-byte v7, p0, v3

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, v3, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    or-int v2, v7, v8

    .line 1419
    .local v2, "group":I
    int-to-long v8, v2

    invoke-virtual {v6, v8, v9}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    .line 1420
    add-int/lit8 v3, v3, 0x2

    .line 1421
    goto :goto_29

    .line 1423
    .end local v2    # "group":I
    :cond_52
    invoke-virtual {v6}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private isDot(Ljava/lang/String;)Z
    .registers 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 1095
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isDotDot(Ljava/lang/String;)Z
    .registers 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 1099
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "%2e."

    .line 1100
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, ".%2e"

    .line 1101
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "%2e%2e"

    .line 1102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private static parsePort(Ljava/lang/String;II)I
    .registers 13
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    const/4 v9, -0x1

    .line 1429
    :try_start_1
    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v8

    .line 1430
    .local v8, "portString":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_f} :catch_1a

    move-result v7

    .line 1431
    .local v7, "i":I
    if-lez v7, :cond_18

    const v0, 0xffff

    if-gt v7, v0, :cond_18

    .line 1434
    .end local v7    # "i":I
    .end local v8    # "portString":Ljava/lang/String;
    :goto_17
    return v7

    .restart local v7    # "i":I
    .restart local v8    # "portString":Ljava/lang/String;
    :cond_18
    move v7, v9

    .line 1432
    goto :goto_17

    .line 1433
    .end local v7    # "i":I
    .end local v8    # "portString":Ljava/lang/String;
    :catch_1a
    move-exception v6

    .local v6, "e":Ljava/lang/NumberFormatException;
    move v7, v9

    .line 1434
    goto :goto_17
.end method

.method private pop()V
    .registers 5

    .prologue
    .line 1116
    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1119
    .local v0, "removed":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1120
    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1124
    :goto_2d
    return-void

    .line 1122
    :cond_2e
    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d
.end method

.method private static portColonOffset(Ljava/lang/String;II)I
    .registers 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 1213
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_1a

    .line 1214
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_1c

    .line 1213
    :cond_a
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1216
    :cond_d
    :sswitch_d
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_a

    .line 1217
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_d

    goto :goto_a

    :cond_1a
    move v0, p2

    .line 1224
    .end local v0    # "i":I
    :sswitch_1b
    return v0

    .line 1214
    :sswitch_data_1c
    .sparse-switch
        0x3a -> :sswitch_1b
        0x5b -> :sswitch_d
    .end sparse-switch
.end method

.method private push(Ljava/lang/String;IIZZ)V
    .registers 13
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "addTrailingSlash"    # Z
    .param p5, "alreadyEncoded"    # Z

    .prologue
    .line 1075
    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    .line 1077
    .local v6, "segment":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/squareup/okhttp/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1092
    :cond_11
    :goto_11
    return-void

    .line 1080
    :cond_12
    invoke-direct {p0, v6}, Lcom/squareup/okhttp/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1081
    invoke-direct {p0}, Lcom/squareup/okhttp/HttpUrl$Builder;->pop()V

    goto :goto_11

    .line 1084
    :cond_1c
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1085
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1089
    :goto_3f
    if-eqz p4, :cond_11

    .line 1090
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1087
    :cond_49
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f
.end method

.method private removeAllCanonicalQueryParameters(Ljava/lang/String;)V
    .registers 5
    .param p1, "canonicalName"    # Ljava/lang/String;

    .prologue
    .line 841
    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2d

    .line 842
    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 843
    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 844
    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 845
    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 846
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 851
    :cond_2d
    return-void

    .line 841
    :cond_2e
    add-int/lit8 v0, v0, -0x2

    goto :goto_8
.end method

.method private resolvePath(Ljava/lang/String;II)V
    .registers 12
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    const/4 v5, 0x1

    .line 1047
    if-ne p2, p3, :cond_4

    .line 1070
    :cond_3
    return-void

    .line 1051
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1052
    .local v6, "c":C
    const/16 v0, 0x2f

    if-eq v6, v0, :cond_10

    const/16 v0, 0x5c

    if-ne v6, v0, :cond_35

    .line 1054
    :cond_10
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1055
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1056
    add-int/lit8 p2, p2, 0x1

    .line 1063
    :goto_1e
    move v2, p2

    .local v2, "i":I
    :cond_1f
    :goto_1f
    if-ge v2, p3, :cond_3

    .line 1064
    const-string v0, "/\\"

    # invokes: Lcom/squareup/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    invoke-static {p1, v2, p3, v0}, Lcom/squareup/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 1065
    .local v3, "pathSegmentDelimiterOffset":I
    if-ge v3, p3, :cond_45

    move v4, v5

    .local v4, "segmentHasTrailingSlash":Z
    :goto_2a
    move-object v0, p0

    move-object v1, p1

    .line 1066
    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1067
    move v2, v3

    .line 1068
    if-eqz v4, :cond_1f

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 1059
    .end local v2    # "i":I
    .end local v3    # "pathSegmentDelimiterOffset":I
    .end local v4    # "segmentHasTrailingSlash":Z
    :cond_35
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v7, ""

    invoke-interface {v0, v1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 1065
    .restart local v2    # "i":I
    .restart local v3    # "pathSegmentDelimiterOffset":I
    :cond_45
    const/4 v4, 0x0

    goto :goto_2a
.end method

.method private static schemeDelimiterOffset(Ljava/lang/String;II)I
    .registers 13
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    const/16 v9, 0x7a

    const/16 v8, 0x61

    const/16 v7, 0x5a

    const/16 v6, 0x41

    const/4 v3, -0x1

    .line 1171
    sub-int v4, p2, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_10

    move v2, v3

    .line 1193
    :cond_f
    :goto_f
    return v2

    .line 1173
    :cond_10
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1174
    .local v1, "c0":C
    if-lt v1, v8, :cond_18

    if-le v1, v9, :cond_1e

    :cond_18
    if-lt v1, v6, :cond_1c

    if-le v1, v7, :cond_1e

    :cond_1c
    move v2, v3

    goto :goto_f

    .line 1176
    :cond_1e
    add-int/lit8 v2, p1, 0x1

    .local v2, "i":I
    :goto_20
    if-ge v2, p2, :cond_4b

    .line 1177
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1179
    .local v0, "c":C
    if-lt v0, v8, :cond_2a

    if-le v0, v9, :cond_42

    :cond_2a
    if-lt v0, v6, :cond_2e

    if-le v0, v7, :cond_42

    :cond_2e
    const/16 v4, 0x30

    if-lt v0, v4, :cond_36

    const/16 v4, 0x39

    if-le v0, v4, :cond_42

    :cond_36
    const/16 v4, 0x2b

    if-eq v0, v4, :cond_42

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_42

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_45

    .line 1176
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 1186
    :cond_45
    const/16 v4, 0x3a

    if-eq v0, v4, :cond_f

    move v2, v3

    .line 1189
    goto :goto_f

    .end local v0    # "c":C
    :cond_4b
    move v2, v3

    .line 1193
    goto :goto_f
.end method

.method private skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
    .registers 6
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    .line 1131
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_e

    .line 1132
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_10

    .line 1143
    .end local v0    # "i":I
    :goto_a
    return v0

    .line 1131
    .restart local v0    # "i":I
    :sswitch_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    move v0, p3

    .line 1143
    goto :goto_a

    .line 1132
    :sswitch_data_10
    .sparse-switch
        0x9 -> :sswitch_b
        0xa -> :sswitch_b
        0xc -> :sswitch_b
        0xd -> :sswitch_b
        0x20 -> :sswitch_b
    .end sparse-switch
.end method

.method private skipTrailingAsciiWhitespace(Ljava/lang/String;II)I
    .registers 6
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    .line 1151
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_2
    if-lt v0, p2, :cond_d

    .line 1152
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_12

    .line 1160
    add-int/lit8 p2, v0, 0x1

    .line 1163
    .end local p2    # "pos":I
    :cond_d
    return p2

    .line 1151
    .restart local p2    # "pos":I
    :sswitch_e
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1152
    nop

    :sswitch_data_12
    .sparse-switch
        0x9 -> :sswitch_e
        0xa -> :sswitch_e
        0xc -> :sswitch_e
        0xd -> :sswitch_e
        0x20 -> :sswitch_e
    .end sparse-switch
.end method

.method private static slashCount(Ljava/lang/String;II)I
    .registers 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 1198
    const/4 v1, 0x0

    .line 1199
    .local v1, "slashCount":I
    :goto_1
    if-ge p1, p2, :cond_14

    .line 1200
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1201
    .local v0, "c":C
    const/16 v2, 0x5c

    if-eq v0, v2, :cond_f

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_14

    .line 1202
    :cond_f
    add-int/lit8 v1, v1, 0x1

    .line 1203
    add-int/lit8 p1, p1, 0x1

    .line 1207
    goto :goto_1

    .line 1208
    .end local v0    # "c":C
    :cond_14
    return v1
.end method


# virtual methods
.method public addEncodedPathSegment(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedPathSegment"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 727
    if-nez p1, :cond_b

    .line 728
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 731
    return-object p0
.end method

.method public addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .registers 6
    .param p1, "encodedName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 802
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 803
    :cond_b
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 804
    :cond_16
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string v1, " \"\'<>#&="

    .line 805
    invoke-static {p1, v1, v2, v2}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 804
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_2f

    const-string v0, " \"\'<>#&="

    .line 807
    invoke-static {p2, v0, v2, v2}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 806
    :goto_2b
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    return-object p0

    .line 807
    :cond_2f
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public addPathSegment(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .registers 8
    .param p1, "pathSegment"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 721
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 723
    return-object p0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 791
    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_c
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 793
    :cond_17
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string v1, " \"\'<>#&="

    invoke-static {p1, v1, v2, v3}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_30

    const-string v0, " \"\'<>#&="

    .line 795
    invoke-static {p2, v0, v2, v3}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 794
    :goto_2c
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    return-object p0

    .line 795
    :cond_30
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public build()Lcom/squareup/okhttp/HttpUrl;
    .registers 3

    .prologue
    .line 866
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
    :cond_c
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_18
    new-instance v0, Lcom/squareup/okhttp/HttpUrl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/HttpUrl;-><init>(Lcom/squareup/okhttp/HttpUrl$Builder;Lcom/squareup/okhttp/HttpUrl$1;)V

    return-object v0
.end method

.method effectivePort()I
    .registers 3

    .prologue
    .line 717
    iget v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->port:I

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v0}, Lcom/squareup/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method

.method public encodedFragment(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .registers 5
    .param p1, "encodedFragment"    # Ljava/lang/String;

    .prologue
    .line 860
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedFragment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :cond_a
    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 862
    return-object p0
.end method

.method public encodedPassword(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .registers 5
    .param p1, "encodedPassword"    # Ljava/lang/String;

    .prologue
    .line 693
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedPassword == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_a
    const-string v0, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 695
    return-object p0
.end method

.method public encodedPath(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .registers 5
    .param p1, "encodedPath"    # Ljava/lang/String;

    .prologue
    .line 767
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedPath == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_a
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 769
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected encodedPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    :cond_2b
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/squareup/okhttp/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 772
    return-object p0
.end method

.method public encodedQuery(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .registers 4
    .param p1, "encodedQuery"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 783
    if-eqz p1, :cond_10

    const-string v0, " \"\'<>#"

    .line 784
    invoke-static {p1, v0, v1, v1}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 786
    return-object p0

    .line 784
    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public encodedUsername(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .registers 5
    .param p1, "encodedUsername"    # Ljava/lang/String;

    .prologue
    .line 681
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedUsername == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_a
    const-string v0, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 683
    return-object p0
.end method

.method public fragment(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .registers 4
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 854
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fragment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_b
    const-string v0, ""

    invoke-static {p1, v0, v1, v1}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 856
    return-object p0
.end method

.method public host(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .registers 6
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 703
    if-nez p1, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "host == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 704
    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/squareup/okhttp/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, "encoded":Ljava/lang/String;
    if-nez v0, :cond_2e

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 706
    :cond_2e
    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 707
    return-object p0
.end method

.method parse(Lcom/squareup/okhttp/HttpUrl;Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder$ParseResult;
    .registers 29
    .param p1, "base"    # Lcom/squareup/okhttp/HttpUrl;
    .param p2, "input"    # Ljava/lang/String;

    .prologue
    .line 924
    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3, v4}, Lcom/squareup/okhttp/HttpUrl$Builder;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v5

    .line 925
    .local v5, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5, v3}, Lcom/squareup/okhttp/HttpUrl$Builder;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v21

    .line 928
    .local v21, "limit":I
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v5, v1}, Lcom/squareup/okhttp/HttpUrl$Builder;->schemeDelimiterOffset(Ljava/lang/String;II)I

    move-result v24

    .line 929
    .local v24, "schemeDelimiterOffset":I
    const/4 v3, -0x1

    move/from16 v0, v24

    if-eq v0, v3, :cond_d0

    .line 930
    const/4 v4, 0x1

    const-string v6, "https:"

    const/4 v7, 0x0

    const/4 v8, 0x6

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 931
    const-string v3, "https"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 932
    const-string v3, "https:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    .line 946
    :goto_40
    const/16 v20, 0x0

    .line 947
    .local v20, "hasUsername":Z
    const/16 v19, 0x0

    .line 948
    .local v19, "hasPassword":Z
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v5, v1}, Lcom/squareup/okhttp/HttpUrl$Builder;->slashCount(Ljava/lang/String;II)I

    move-result v25

    .line 949
    .local v25, "slashCount":I
    const/4 v3, 0x2

    move/from16 v0, v25

    if-ge v0, v3, :cond_61

    if-eqz p1, :cond_61

    # getter for: Lcom/squareup/okhttp/HttpUrl;->scheme:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/HttpUrl;->access$100(Lcom/squareup/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f2

    .line 959
    :cond_61
    add-int v5, v5, v25

    .line 962
    :goto_63
    const-string v3, "@/\\?#"

    move-object/from16 v0, p2

    move/from16 v1, v21

    # invokes: Lcom/squareup/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    invoke-static {v0, v5, v1, v3}, Lcom/squareup/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v18

    .line 963
    .local v18, "componentDelimiterOffset":I
    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_df

    .line 964
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 966
    .local v16, "c":I
    :goto_7b
    sparse-switch v16, :sswitch_data_23e

    goto :goto_63

    .line 996
    :sswitch_7f
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v0, v5, v1}, Lcom/squareup/okhttp/HttpUrl$Builder;->portColonOffset(Ljava/lang/String;II)I

    move-result v23

    .line 997
    .local v23, "portColonOffset":I
    add-int/lit8 v3, v23, 0x1

    move/from16 v0, v18

    if-ge v3, v0, :cond_168

    .line 998
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v5, v1}, Lcom/squareup/okhttp/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 999
    add-int/lit8 v3, v23, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v0, v3, v1}, Lcom/squareup/okhttp/HttpUrl$Builder;->parsePort(Ljava/lang/String;II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->port:I

    .line 1000
    move-object/from16 v0, p0

    iget v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->port:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_180

    sget-object v3, Lcom/squareup/okhttp/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lcom/squareup/okhttp/HttpUrl$Builder$ParseResult;

    .line 1042
    .end local v16    # "c":I
    .end local v18    # "componentDelimiterOffset":I
    .end local v19    # "hasPassword":Z
    .end local v20    # "hasUsername":Z
    .end local v23    # "portColonOffset":I
    .end local v25    # "slashCount":I
    :goto_b0
    return-object v3

    .line 933
    :cond_b1
    const/4 v4, 0x1

    const-string v6, "http:"

    const/4 v7, 0x0

    const/4 v8, 0x5

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 934
    const-string v3, "http"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 935
    const-string v3, "http:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_40

    .line 937
    :cond_cd
    sget-object v3, Lcom/squareup/okhttp/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lcom/squareup/okhttp/HttpUrl$Builder$ParseResult;

    goto :goto_b0

    .line 939
    :cond_d0
    if-eqz p1, :cond_dc

    .line 940
    # getter for: Lcom/squareup/okhttp/HttpUrl;->scheme:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/HttpUrl;->access$100(Lcom/squareup/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto/16 :goto_40

    .line 942
    :cond_dc
    sget-object v3, Lcom/squareup/okhttp/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lcom/squareup/okhttp/HttpUrl$Builder$ParseResult;

    goto :goto_b0

    .line 964
    .restart local v18    # "componentDelimiterOffset":I
    .restart local v19    # "hasPassword":Z
    .restart local v20    # "hasUsername":Z
    .restart local v25    # "slashCount":I
    :cond_df
    const/16 v16, -0x1

    goto :goto_7b

    .line 969
    .restart local v16    # "c":I
    :sswitch_e2
    if-nez v19, :cond_13b

    .line 970
    const-string v3, ":"

    move-object/from16 v0, p2

    move/from16 v1, v18

    # invokes: Lcom/squareup/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    invoke-static {v0, v5, v1, v3}, Lcom/squareup/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v6

    .line 972
    .local v6, "passwordColonOffset":I
    const-string v7, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v9}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v17

    .line 974
    .local v17, "canonicalUsername":Ljava/lang/String;
    if-eqz v20, :cond_117

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%40"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .end local v17    # "canonicalUsername":Ljava/lang/String;
    :cond_117
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 977
    move/from16 v0, v18

    if-eq v6, v0, :cond_135

    .line 978
    const/16 v19, 0x1

    .line 979
    add-int/lit8 v8, v6, 0x1

    const-string v10, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p2

    move/from16 v9, v18

    invoke-static/range {v7 .. v12}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 982
    :cond_135
    const/16 v20, 0x1

    .line 987
    .end local v6    # "passwordColonOffset":I
    :goto_137
    add-int/lit8 v5, v18, 0x1

    .line 988
    goto/16 :goto_63

    .line 984
    :cond_13b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%40"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p2

    move v8, v5

    move/from16 v9, v18

    invoke-static/range {v7 .. v12}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    goto :goto_137

    .line 1002
    .restart local v23    # "portColonOffset":I
    :cond_168
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v5, v1}, Lcom/squareup/okhttp/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1003
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->port:I

    .line 1005
    :cond_180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v3, :cond_18a

    sget-object v3, Lcom/squareup/okhttp/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lcom/squareup/okhttp/HttpUrl$Builder$ParseResult;

    goto/16 :goto_b0

    .line 1006
    :cond_18a
    move/from16 v5, v18

    .line 1024
    .end local v16    # "c":I
    .end local v18    # "componentDelimiterOffset":I
    .end local v23    # "portColonOffset":I
    :cond_18c
    :goto_18c
    const-string v3, "?#"

    move-object/from16 v0, p2

    move/from16 v1, v21

    # invokes: Lcom/squareup/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    invoke-static {v0, v5, v1, v3}, Lcom/squareup/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v22

    .line 1025
    .local v22, "pathDelimiterOffset":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-direct {v0, v1, v5, v2}, Lcom/squareup/okhttp/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 1026
    move/from16 v5, v22

    .line 1029
    move/from16 v0, v21

    if-ge v5, v0, :cond_1ce

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_1ce

    .line 1030
    const-string v3, "#"

    move-object/from16 v0, p2

    move/from16 v1, v21

    # invokes: Lcom/squareup/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    invoke-static {v0, v5, v1, v3}, Lcom/squareup/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v9

    .line 1031
    .local v9, "queryDelimiterOffset":I
    add-int/lit8 v8, v5, 0x1

    const-string v10, " \"\'<>#"

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v7, p2

    invoke-static/range {v7 .. v12}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/okhttp/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1033
    move v5, v9

    .line 1037
    .end local v9    # "queryDelimiterOffset":I
    :cond_1ce
    move/from16 v0, v21

    if-ge v5, v0, :cond_1ee

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_1ee

    .line 1038
    add-int/lit8 v11, v5, 0x1

    const-string v13, ""

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p2

    move/from16 v12, v21

    invoke-static/range {v10 .. v15}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1042
    :cond_1ee
    sget-object v3, Lcom/squareup/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/squareup/okhttp/HttpUrl$Builder$ParseResult;

    goto/16 :goto_b0

    .line 1012
    .end local v22    # "pathDelimiterOffset":I
    :cond_1f2
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1013
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1014
    # getter for: Lcom/squareup/okhttp/HttpUrl;->host:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/HttpUrl;->access$300(Lcom/squareup/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1015
    # getter for: Lcom/squareup/okhttp/HttpUrl;->port:I
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/HttpUrl;->access$400(Lcom/squareup/okhttp/HttpUrl;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->port:I

    .line 1016
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1017
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1018
    move/from16 v0, v21

    if-eq v5, v0, :cond_232

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_18c

    .line 1019
    :cond_232
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;

    goto/16 :goto_18c

    .line 966
    nop

    :sswitch_data_23e
    .sparse-switch
        -0x1 -> :sswitch_7f
        0x23 -> :sswitch_7f
        0x2f -> :sswitch_7f
        0x3f -> :sswitch_7f
        0x40 -> :sswitch_e2
        0x5c -> :sswitch_7f
    .end sparse-switch
.end method

.method public password(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .registers 4
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 687
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_b
    const-string v0, " \"\':;<=>@[]^`{}|/\\?#"

    invoke-static {p1, v0, v1, v1}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 689
    return-object p0
.end method

.method public port(I)Lcom/squareup/okhttp/HttpUrl$Builder;
    .registers 5
    .param p1, "port"    # I

    .prologue
    .line 711
    if-lez p1, :cond_7

    const v0, 0xffff

    if-le p1, v0, :cond_20

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_20
    iput p1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->port:I

    .line 713
    return-object p0
.end method

.method public query(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .registers 5
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 776
    if-eqz p1, :cond_11

    const-string v0, " \"\'<>#"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 777
    invoke-static {p1, v0, v1, v2}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_e
    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 779
    return-object p0

    .line 777
    :cond_11
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public removeAllEncodedQueryParameters(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .registers 4
    .param p1, "encodedName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 833
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_b
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_10

    .line 837
    :goto_f
    return-object p0

    .line 835
    :cond_10
    const-string v0, " \"\'<>#&="

    .line 836
    invoke-static {p1, v0, v1, v1}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 835
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public removeAllQueryParameters(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 825
    if-nez p1, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 826
    :cond_a
    iget-object v1, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v1, :cond_f

    .line 829
    :goto_e
    return-object p0

    .line 827
    :cond_f
    const-string v1, " \"\'<>#&="

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, "nameToRemove":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public removePathSegment(I)Lcom/squareup/okhttp/HttpUrl$Builder;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 759
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 760
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 761
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    :cond_14
    return-object p0
.end method

.method public scheme(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .registers 5
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 662
    if-nez p1, :cond_a

    .line 663
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_a
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 665
    const-string v0, "http"

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 671
    :goto_16
    return-object p0

    .line 666
    :cond_17
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 667
    const-string v0, "https"

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto :goto_16

    .line 669
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncodedPathSegment(ILjava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .registers 10
    .param p1, "index"    # I
    .param p2, "encodedPathSegment"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 746
    if-nez p2, :cond_b

    .line 747
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v4, 0x1

    move-object v0, p2

    move v5, v1

    .line 749
    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    .line 751
    .local v6, "canonicalPathSegment":Ljava/lang/String;
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 752
    invoke-direct {p0, v6}, Lcom/squareup/okhttp/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-direct {p0, v6}, Lcom/squareup/okhttp/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 753
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected path segment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :cond_42
    return-object p0
.end method

.method public setEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .registers 3
    .param p1, "encodedName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Ljava/lang/String;

    .prologue
    .line 819
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/HttpUrl$Builder;->removeAllEncodedQueryParameters(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;

    .line 820
    invoke-virtual {p0, p1, p2}, Lcom/squareup/okhttp/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;

    .line 821
    return-object p0
.end method

.method public setPathSegment(ILjava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .registers 10
    .param p1, "index"    # I
    .param p2, "pathSegment"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 735
    if-nez p2, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, " \"<>^`{}|/\\?#"

    move-object v0, p2

    move v4, v1

    move v5, v1

    .line 736
    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    .line 738
    .local v6, "canonicalPathSegment":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/squareup/okhttp/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-direct {p0, v6}, Lcom/squareup/okhttp/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 739
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected path segment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_3d
    iget-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 742
    return-object p0
.end method

.method public setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 813
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/HttpUrl$Builder;->removeAllQueryParameters(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;

    .line 814
    invoke-virtual {p0, p1, p2}, Lcom/squareup/okhttp/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;

    .line 815
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x3a

    .line 872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 873
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 877
    :cond_21
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    .line 879
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 880
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    :cond_36
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 885
    :cond_3b
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8b

    .line 887
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 888
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 894
    :goto_53
    invoke-virtual {p0}, Lcom/squareup/okhttp/HttpUrl$Builder;->effectivePort()I

    move-result v0

    .line 895
    .local v0, "effectivePort":I
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lcom/squareup/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_65

    .line 896
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 897
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 900
    :cond_65
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/squareup/okhttp/HttpUrl;->pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 902
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v2, :cond_78

    .line 903
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 904
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/squareup/okhttp/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 907
    :cond_78
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v2, :cond_86

    .line 908
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 909
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    :cond_86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 891
    .end local v0    # "effectivePort":I
    :cond_8b
    iget-object v2, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_53
.end method

.method public username(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;
    .registers 4
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 675
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "username == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_b
    const-string v0, " \"\':;<=>@[]^`{}|/\\?#"

    invoke-static {p1, v0, v1, v1}, Lcom/squareup/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 677
    return-object p0
.end method

.class public Lmobisocial/omlib/client/ClientBlobUtils;
.super Ljava/lang/Object;
.source "ClientBlobUtils.java"


# static fields
.field public static final FIVE_MB:J = 0x500000L

.field private static final TAG:Ljava/lang/String; = "ClientBlobUtils"

.field public static THUMBNAIL_CATEGORY:Ljava/lang/String;


# instance fields
.field final mClient:Lmobisocial/omlib/client/LongdanClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const-string v0, "thumbnails"

    sput-object v0, Lmobisocial/omlib/client/ClientBlobUtils;->THUMBNAIL_CATEGORY:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lmobisocial/omlib/client/LongdanClient;)V
    .registers 2
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lmobisocial/omlib/client/ClientBlobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    .line 64
    return-void
.end method

.method static fromBase64String(Ljava/lang/String;)[B
    .registers 4
    .param p0, "b64s"    # Ljava/lang/String;

    .prologue
    .line 529
    if-nez p0, :cond_4

    .line 530
    const/4 v0, 0x0

    .line 533
    :goto_3
    return-object v0

    .line 532
    :cond_4
    const/16 v0, 0x5f

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 533
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_3
.end method

.method private getTempStoragePathForBlob()Ljava/io/File;
    .registers 8

    .prologue
    .line 105
    const/16 v3, 0x20

    new-array v1, v3, [B

    .line 106
    .local v1, "hash":[B
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 107
    invoke-static {v1}, Lmobisocial/omlib/model/OmletModel$Blobs;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "hex":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lmobisocial/omlib/client/ClientBlobUtils;->getBlobRootDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "tmp"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .local v0, "blobDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "%s.dat"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v3
.end method

.method private uploadMultiPart(Ljava/io/RandomAccessFile;JLmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/omlib/interfaces/BlobUploadListener;Ljava/lang/String;Landroid/os/CancellationSignal;)Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    .registers 48
    .param p1, "randomAccessFile"    # Ljava/io/RandomAccessFile;
    .param p2, "final_length"    # J
    .param p4, "feed"    # Lmobisocial/longdan/LDProtocols$LDFeed;
    .param p5, "blobUploadListener"    # Lmobisocial/omlib/interfaces/BlobUploadListener;
    .param p6, "mimeType"    # Ljava/lang/String;
    .param p7, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 210
    const/16 v35, 0x0

    .line 211
    .local v35, "remote":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    new-instance v14, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v10, 0x0

    invoke-direct {v14, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 212
    .local v14, "uploaded":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v38, Lmobisocial/longdan/LDProtocols$LDGetMultipartUploadTicketRequest;

    invoke-direct/range {v38 .. v38}, Lmobisocial/longdan/LDProtocols$LDGetMultipartUploadTicketRequest;-><init>()V

    .line 213
    .local v38, "upr":Lmobisocial/longdan/LDProtocols$LDGetMultipartUploadTicketRequest;
    if-eqz p4, :cond_bb

    move-object/from16 v0, p4

    iget-object v4, v0, Lmobisocial/longdan/LDProtocols$LDFeed;->Account:Ljava/lang/String;

    :goto_14
    move-object/from16 v0, v38

    iput-object v4, v0, Lmobisocial/longdan/LDProtocols$LDGetMultipartUploadTicketRequest;->Account:Ljava/lang/String;

    .line 214
    new-instance v4, Lmobisocial/longdan/LDProtocols$LDBlobMetadata;

    invoke-direct {v4}, Lmobisocial/longdan/LDProtocols$LDBlobMetadata;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lmobisocial/longdan/LDProtocols$LDGetMultipartUploadTicketRequest;->WholeMetadata:Lmobisocial/longdan/LDProtocols$LDBlobMetadata;

    .line 215
    move-object/from16 v0, v38

    iget-object v4, v0, Lmobisocial/longdan/LDProtocols$LDGetMultipartUploadTicketRequest;->WholeMetadata:Lmobisocial/longdan/LDProtocols$LDBlobMetadata;

    move-object/from16 v0, p6

    iput-object v0, v4, Lmobisocial/longdan/LDProtocols$LDBlobMetadata;->MimeType:Ljava/lang/String;

    .line 216
    move-object/from16 v0, v38

    iget-object v4, v0, Lmobisocial/longdan/LDProtocols$LDGetMultipartUploadTicketRequest;->WholeMetadata:Lmobisocial/longdan/LDProtocols$LDBlobMetadata;

    move-wide/from16 v0, p2

    iput-wide v0, v4, Lmobisocial/longdan/LDProtocols$LDBlobMetadata;->Size:J

    .line 217
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v32, "partialMetadatas":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDBlobMetadata;>;"
    move-object/from16 v0, v32

    move-object/from16 v1, v38

    iput-object v0, v1, Lmobisocial/longdan/LDProtocols$LDGetMultipartUploadTicketRequest;->PartMetadataList:Ljava/util/List;

    .line 219
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v36

    .line 220
    .local v36, "shaHasher":Ljava/security/MessageDigest;
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v28

    .line 221
    .local v28, "md5PartHasher":Ljava/security/MessageDigest;
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v27

    .line 222
    .local v27, "md5CompleteHasher":Ljava/security/MessageDigest;
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_50
    move/from16 v0, v23

    int-to-long v10, v0

    const-wide/32 v12, 0x500000

    mul-long/2addr v10, v12

    cmp-long v4, v10, p2

    if-gez v4, :cond_f4

    .line 223
    const-wide/32 v10, 0x500000

    move/from16 v0, v23

    int-to-long v12, v0

    mul-long/2addr v10, v12

    long-to-int v0, v10

    move/from16 v29, v0

    .line 224
    .local v29, "offset":I
    move/from16 v0, v29

    int-to-long v10, v0

    const-wide/32 v12, 0x500000

    add-long/2addr v10, v12

    move-wide/from16 v0, p2

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v0, v10

    move/from16 v21, v0

    .line 225
    .local v21, "end":I
    sub-int v30, v21, v29

    .line 226
    .local v30, "partLength":I
    move/from16 v0, v29

    int-to-long v10, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 227
    const/16 v4, 0x2000

    new-array v0, v4, [B

    move-object/from16 v18, v0

    .line 229
    .local v18, "buf":[B
    move-object/from16 v0, v18

    array-length v4, v0

    sub-int v6, v21, v29

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 230
    .local v26, "maxBytes":I
    :goto_8e
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v34

    .local v34, "read":I
    if-lez v34, :cond_c7

    .line 231
    const/4 v4, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    move/from16 v2, v34

    invoke-virtual {v0, v1, v4, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 232
    const/4 v4, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    move/from16 v2, v34

    invoke-virtual {v0, v1, v4, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 233
    add-int v29, v29, v34

    .line 234
    move-object/from16 v0, v18

    array-length v4, v0

    sub-int v6, v21, v29

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v26

    goto :goto_8e

    .line 213
    .end local v18    # "buf":[B
    .end local v21    # "end":I
    .end local v23    # "i":I
    .end local v26    # "maxBytes":I
    .end local v27    # "md5CompleteHasher":Ljava/security/MessageDigest;
    .end local v28    # "md5PartHasher":Ljava/security/MessageDigest;
    .end local v29    # "offset":I
    .end local v30    # "partLength":I
    .end local v32    # "partialMetadatas":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDBlobMetadata;>;"
    .end local v34    # "read":I
    .end local v36    # "shaHasher":Ljava/security/MessageDigest;
    :cond_bb
    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/client/ClientBlobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v4, v4, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v4}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_14

    .line 236
    .restart local v18    # "buf":[B
    .restart local v21    # "end":I
    .restart local v23    # "i":I
    .restart local v26    # "maxBytes":I
    .restart local v27    # "md5CompleteHasher":Ljava/security/MessageDigest;
    .restart local v28    # "md5PartHasher":Ljava/security/MessageDigest;
    .restart local v29    # "offset":I
    .restart local v30    # "partLength":I
    .restart local v32    # "partialMetadatas":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDBlobMetadata;>;"
    .restart local v34    # "read":I
    .restart local v36    # "shaHasher":Ljava/security/MessageDigest;
    :cond_c7
    invoke-virtual/range {v28 .. v28}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 237
    new-instance v31, Lmobisocial/longdan/LDProtocols$LDBlobMetadata;

    invoke-direct/range {v31 .. v31}, Lmobisocial/longdan/LDProtocols$LDBlobMetadata;-><init>()V

    .line 238
    .local v31, "partialMetadata":Lmobisocial/longdan/LDProtocols$LDBlobMetadata;
    invoke-virtual/range {v36 .. v36}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    move-object/from16 v0, v31

    iput-object v4, v0, Lmobisocial/longdan/LDProtocols$LDBlobMetadata;->Hash:[B

    .line 239
    move/from16 v0, v30

    int-to-long v10, v0

    move-object/from16 v0, v31

    iput-wide v10, v0, Lmobisocial/longdan/LDProtocols$LDBlobMetadata;->Size:J

    .line 241
    const/4 v4, 0x0

    move-object/from16 v0, v31

    iput-object v4, v0, Lmobisocial/longdan/LDProtocols$LDBlobMetadata;->MimeType:Ljava/lang/String;

    .line 242
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_50

    .line 244
    .end local v18    # "buf":[B
    .end local v21    # "end":I
    .end local v26    # "maxBytes":I
    .end local v29    # "offset":I
    .end local v30    # "partLength":I
    .end local v31    # "partialMetadata":Lmobisocial/longdan/LDProtocols$LDBlobMetadata;
    .end local v34    # "read":I
    :cond_f4
    move-object/from16 v0, v38

    iget-object v4, v0, Lmobisocial/longdan/LDProtocols$LDGetMultipartUploadTicketRequest;->WholeMetadata:Lmobisocial/longdan/LDProtocols$LDBlobMetadata;

    invoke-virtual/range {v27 .. v27}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    iput-object v6, v4, Lmobisocial/longdan/LDProtocols$LDBlobMetadata;->Hash:[B

    .line 245
    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/client/ClientBlobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v4

    const-class v6, Lmobisocial/longdan/LDProtocols$LDGetMultipartUploadTicketResponse;

    move-object/from16 v0, v38

    invoke-virtual {v4, v0, v6}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v37

    check-cast v37, Lmobisocial/longdan/LDProtocols$LDGetMultipartUploadTicketResponse;

    .line 246
    .local v37, "ticketsResponse":Lmobisocial/longdan/LDProtocols$LDGetMultipartUploadTicketResponse;
    sget v4, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v6, 0x3

    if-gt v4, v6, :cond_12f

    .line 247
    const-string v4, "ClientBlobUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "response: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_12f
    move-object/from16 v0, v37

    iget-object v4, v0, Lmobisocial/longdan/LDProtocols$LDGetMultipartUploadTicketResponse;->BlobUploadTickets:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;

    .line 249
    .local v25, "mainTicket":Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;->AlreadyUploaded:Z

    if-eqz v4, :cond_15b

    move-object/from16 v0, v25

    iget-object v4, v0, Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;->BlobLinkString:Ljava/lang/String;

    if-eqz v4, :cond_15b

    .line 250
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lmobisocial/omlib/interfaces/BlobUploadListener;->onPartUploaded(F)V

    .line 251
    new-instance v35, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;

    .end local v35    # "remote":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    invoke-direct/range {v35 .. v35}, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;-><init>()V

    .line 252
    .restart local v35    # "remote":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    move-object/from16 v0, v25

    iget-object v4, v0, Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;->BlobLinkString:Ljava/lang/String;

    move-object/from16 v0, v35

    iput-object v4, v0, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;->blobLinkString:Ljava/lang/String;

    .line 285
    :cond_15a
    :goto_15a
    return-object v35

    .line 253
    :cond_15b
    move-object/from16 v0, v37

    iget-object v4, v0, Lmobisocial/longdan/LDProtocols$LDGetMultipartUploadTicketResponse;->BlobUploadTickets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_15a

    .line 254
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v8, "etags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v23, 0x0

    :goto_16d
    move/from16 v0, v23

    int-to-long v10, v0

    const-wide/32 v12, 0x500000

    mul-long/2addr v10, v12

    cmp-long v4, v10, p2

    if-gez v4, :cond_1ea

    .line 256
    const-wide/32 v10, 0x500000

    move/from16 v0, v23

    int-to-long v12, v0

    mul-long/2addr v10, v12

    long-to-int v0, v10

    move/from16 v29, v0

    .line 257
    .restart local v29    # "offset":I
    move/from16 v0, v29

    int-to-long v10, v0

    const-wide/32 v12, 0x500000

    add-long/2addr v10, v12

    move-wide/from16 v0, p2

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v0, v10

    move/from16 v21, v0

    .line 258
    .restart local v21    # "end":I
    sub-int v30, v21, v29

    .line 259
    .restart local v30    # "partLength":I
    move/from16 v0, v29

    int-to-long v10, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 260
    move-object/from16 v0, v37

    iget-object v4, v0, Lmobisocial/longdan/LDProtocols$LDGetMultipartUploadTicketResponse;->BlobUploadTickets:Ljava/util/List;

    add-int/lit8 v6, v23, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;

    .line 261
    .local v7, "ticket":Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;
    iget-boolean v4, v7, Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;->AlreadyUploaded:Z

    if-eqz v4, :cond_1c3

    .line 262
    sub-int v4, v21, v29

    int-to-long v10, v4

    invoke-virtual {v14, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 263
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    long-to-float v4, v10

    move-wide/from16 v0, p2

    long-to-float v6, v0

    div-float/2addr v4, v6

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Lmobisocial/omlib/interfaces/BlobUploadListener;->onPartUploaded(F)V

    .line 255
    :cond_1c0
    :goto_1c0
    add-int/lit8 v23, v23, 0x1

    goto :goto_16d

    .line 265
    :cond_1c3
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    .line 266
    .local v16, "alreadySent":J
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v5

    .line 267
    .local v5, "ins":Ljava/io/InputStream;
    move/from16 v0, v30

    int-to-long v10, v0

    move-object/from16 v4, p0

    move-object/from16 v6, p6

    move-object/from16 v9, p5

    move-wide/from16 v12, p2

    move-object/from16 v15, p7

    invoke-direct/range {v4 .. v15}, Lmobisocial/omlib/client/ClientBlobUtils;->uploadPiece(Ljava/io/InputStream;Ljava/lang/String;Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;Ljava/util/List;Lmobisocial/omlib/interfaces/BlobUploadListener;JJLjava/util/concurrent/atomic/AtomicLong;Landroid/os/CancellationSignal;)Z

    move-result v33

    .line 268
    .local v33, "pieceComplete":Z
    if-nez v33, :cond_1c0

    .line 269
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 270
    add-int/lit8 v23, v23, -0x1

    goto :goto_1c0

    .line 274
    .end local v5    # "ins":Ljava/io/InputStream;
    .end local v7    # "ticket":Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;
    .end local v16    # "alreadySent":J
    .end local v21    # "end":I
    .end local v29    # "offset":I
    .end local v30    # "partLength":I
    .end local v33    # "pieceComplete":Z
    :cond_1ea
    const/16 v20, 0x1

    .line 275
    .local v20, "count":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 276
    .local v22, "etag":Ljava/lang/String;
    move-object/from16 v0, v25

    iget-object v6, v0, Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;->UploadHeaders:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "part"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v22

    invoke-virtual {v6, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    add-int/lit8 v20, v20, 0x1

    .line 278
    goto :goto_1f0

    .line 279
    .end local v22    # "etag":Ljava/lang/String;
    :cond_21d
    new-instance v19, Lmobisocial/longdan/LDProtocols$LDVerifyUploadCompletedRequest;

    invoke-direct/range {v19 .. v19}, Lmobisocial/longdan/LDProtocols$LDVerifyUploadCompletedRequest;-><init>()V

    .line 280
    .local v19, "completion":Lmobisocial/longdan/LDProtocols$LDVerifyUploadCompletedRequest;
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lmobisocial/longdan/LDProtocols$LDVerifyUploadCompletedRequest;->BlobUploadTicket:Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;

    .line 281
    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/client/ClientBlobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v4

    const-class v6, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    const/4 v9, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v6, v9}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Z)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v4

    check-cast v4, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;->Value:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    .line 282
    .local v24, "link":Ljava/lang/String;
    new-instance v35, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;

    .end local v35    # "remote":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    invoke-direct/range {v35 .. v35}, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;-><init>()V

    .line 283
    .restart local v35    # "remote":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    move-object/from16 v0, v24

    move-object/from16 v1, v35

    iput-object v0, v1, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;->blobLinkString:Ljava/lang/String;

    goto/16 :goto_15a
.end method

.method private uploadPiece(Ljava/io/InputStream;Ljava/lang/String;Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;Ljava/util/List;Lmobisocial/omlib/interfaces/BlobUploadListener;JJLjava/util/concurrent/atomic/AtomicLong;Landroid/os/CancellationSignal;)Z
    .registers 30
    .param p1, "blobInputStream"    # Ljava/io/InputStream;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "ticket"    # Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;
    .param p5, "handler"    # Lmobisocial/omlib/interfaces/BlobUploadListener;
    .param p6, "partLength"    # J
    .param p8, "totalLength"    # J
    .param p10, "uploaded"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p11, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lmobisocial/omlib/interfaces/BlobUploadListener;",
            "JJ",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Landroid/os/CancellationSignal;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanNetworkException;
        }
    .end annotation

    .prologue
    .line 350
    .local p4, "etags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p11, :cond_7

    .line 351
    new-instance p11, Landroid/os/CancellationSignal;

    .end local p11    # "cancellationSignal":Landroid/os/CancellationSignal;
    invoke-direct/range {p11 .. p11}, Landroid/os/CancellationSignal;-><init>()V

    .line 352
    .restart local p11    # "cancellationSignal":Landroid/os/CancellationSignal;
    :cond_7
    move-object/from16 v11, p11

    .line 354
    .local v11, "cancellation":Landroid/os/CancellationSignal;
    :try_start_9
    new-instance v15, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v15}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 355
    .local v15, "rb":Lcom/squareup/okhttp/Request$Builder;
    move-object/from16 v0, p3

    iget-object v2, v0, Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;->UploadHeaders:Ljava/util/HashMap;

    if-eqz v2, :cond_53

    .line 356
    move-object/from16 v0, p3

    iget-object v2, v0, Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;->UploadHeaders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 357
    .local v13, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v15, v2, v3}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_3b} :catch_3c

    goto :goto_20

    .line 400
    .end local v13    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "rb":Lcom/squareup/okhttp/Request$Builder;
    :catch_3c
    move-exception v12

    .line 401
    .local v12, "e":Ljava/io/IOException;
    const-string v2, "ClientBlobUtils"

    const-string v3, "IOException"

    invoke-static {v2, v3, v12}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    new-instance v2, Lmobisocial/longdan/exception/LongdanNetworkException;

    invoke-direct {v2, v12}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/Exception;)V

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lmobisocial/omlib/interfaces/BlobUploadListener;->onRetryableError(Lmobisocial/longdan/exception/LongdanNetworkException;)Z

    move-result v17

    .line 403
    .local v17, "retry":Z
    if-eqz v17, :cond_110

    .line 404
    const/4 v2, 0x0

    .line 407
    .end local v12    # "e":Ljava/io/IOException;
    .end local v17    # "retry":Z
    :goto_52
    return v2

    .line 360
    .restart local v15    # "rb":Lcom/squareup/okhttp/Request$Builder;
    :cond_53
    :try_start_53
    new-instance v1, Lmobisocial/omlib/client/ClientBlobUtils$3;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-wide/from16 v4, p6

    move-object/from16 v6, p1

    move-object/from16 v7, p10

    move-object/from16 v8, p5

    move-wide/from16 v9, p8

    invoke-direct/range {v1 .. v11}, Lmobisocial/omlib/client/ClientBlobUtils$3;-><init>(Lmobisocial/omlib/client/ClientBlobUtils;Ljava/lang/String;JLjava/io/InputStream;Ljava/util/concurrent/atomic/AtomicLong;Lmobisocial/omlib/interfaces/BlobUploadListener;JLandroid/os/CancellationSignal;)V

    .line 389
    .local v1, "body":Lcom/squareup/okhttp/RequestBody;
    move-object/from16 v0, p3

    iget-object v2, v0, Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;->UploadUrl:Ljava/lang/String;

    invoke-virtual {v15, v2}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/Request$Builder;->put(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    .line 390
    new-instance v2, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v2}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    invoke-virtual {v15}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v16

    .line 391
    .local v16, "resp":Lcom/squareup/okhttp/Response;
    invoke-virtual/range {v16 .. v16}, Lcom/squareup/okhttp/Response;->code()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_dd

    .line 392
    const-string v2, "ClientBlobUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed part upload with status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/squareup/okhttp/Response;->code()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/squareup/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/squareup/okhttp/Response;->code()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " temporary error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 395
    :cond_dd
    const-string v2, "ETag"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 396
    .local v14, "etag":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v14, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 397
    const-string v2, "ClientBlobUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got etag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    move-object/from16 v0, p4

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_10d} :catch_3c

    .line 407
    const/4 v2, 0x1

    goto/16 :goto_52

    .line 405
    .end local v1    # "body":Lcom/squareup/okhttp/RequestBody;
    .end local v14    # "etag":Ljava/lang/String;
    .end local v15    # "rb":Lcom/squareup/okhttp/Request$Builder;
    .end local v16    # "resp":Lcom/squareup/okhttp/Response;
    .restart local v12    # "e":Ljava/io/IOException;
    .restart local v17    # "retry":Z
    :cond_110
    new-instance v2, Lmobisocial/longdan/exception/LongdanNetworkException;

    invoke-direct {v2, v12}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method private uploadSinglePart(Ljava/io/RandomAccessFile;JLmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/omlib/interfaces/BlobUploadListener;Ljava/lang/String;Landroid/os/CancellationSignal;)Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    .registers 28
    .param p1, "randomAccessFile"    # Ljava/io/RandomAccessFile;
    .param p2, "final_length"    # J
    .param p4, "feed"    # Lmobisocial/longdan/LDProtocols$LDFeed;
    .param p5, "blobUploadListener"    # Lmobisocial/omlib/interfaces/BlobUploadListener;
    .param p6, "mimeType"    # Ljava/lang/String;
    .param p7, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 172
    const/16 v16, 0x0

    .line 173
    .local v16, "remote":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    new-instance v10, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x0

    invoke-direct {v10, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 174
    .local v10, "uploaded":Ljava/util/concurrent/atomic/AtomicLong;
    const-string v3, "md5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v14

    .line 175
    .local v14, "md5":Ljava/security/MessageDigest;
    const/16 v3, 0x800

    new-array v2, v3, [B

    .line 177
    .local v2, "buf":[B
    :goto_13
    const/4 v3, 0x0

    array-length v5, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v15

    .local v15, "read":I
    if-lez v15, :cond_22

    .line 178
    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3, v15}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_13

    .line 180
    :cond_22
    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 181
    new-instance v19, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;

    invoke-direct/range {v19 .. v19}, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;-><init>()V

    .line 182
    .local v19, "upr":Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;
    if-eqz p4, :cond_8c

    move-object/from16 v0, p4

    iget-object v3, v0, Lmobisocial/longdan/LDProtocols$LDFeed;->Account:Ljava/lang/String;

    :goto_34
    move-object/from16 v0, v19

    iput-object v3, v0, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;->Account:Ljava/lang/String;

    .line 183
    new-instance v3, Lmobisocial/longdan/LDProtocols$LDBlobMetadata;

    invoke-direct {v3}, Lmobisocial/longdan/LDProtocols$LDBlobMetadata;-><init>()V

    move-object/from16 v0, v19

    iput-object v3, v0, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;->Metadata:Lmobisocial/longdan/LDProtocols$LDBlobMetadata;

    .line 184
    move-object/from16 v0, v19

    iget-object v3, v0, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;->Metadata:Lmobisocial/longdan/LDProtocols$LDBlobMetadata;

    invoke-virtual {v14}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    iput-object v5, v3, Lmobisocial/longdan/LDProtocols$LDBlobMetadata;->Hash:[B

    .line 185
    move-object/from16 v0, v19

    iget-object v3, v0, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;->Metadata:Lmobisocial/longdan/LDProtocols$LDBlobMetadata;

    move-object/from16 v0, p6

    iput-object v0, v3, Lmobisocial/longdan/LDProtocols$LDBlobMetadata;->MimeType:Ljava/lang/String;

    .line 186
    move-object/from16 v0, v19

    iget-object v3, v0, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;->Metadata:Lmobisocial/longdan/LDProtocols$LDBlobMetadata;

    move-wide/from16 v0, p2

    iput-wide v0, v3, Lmobisocial/longdan/LDProtocols$LDBlobMetadata;->Size:J

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlib/client/ClientBlobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v3}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v3

    const-class v5, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketResponse;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v5}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v17

    check-cast v17, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketResponse;

    .line 188
    .local v17, "ticket":Lmobisocial/longdan/LDProtocols$LDGetUploadTicketResponse;
    move-object/from16 v0, v17

    iget-object v3, v0, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketResponse;->BlobUploadTicket:Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;

    iget-boolean v3, v3, Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;->AlreadyUploaded:Z

    if-eqz v3, :cond_97

    .line 189
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lmobisocial/omlib/interfaces/BlobUploadListener;->onPartUploaded(F)V

    .line 190
    new-instance v16, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;

    .end local v16    # "remote":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    invoke-direct/range {v16 .. v16}, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;-><init>()V

    .line 191
    .restart local v16    # "remote":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    move-object/from16 v0, v17

    iget-object v3, v0, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketResponse;->BlobUploadTicket:Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;

    iget-object v3, v3, Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;->BlobLinkString:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v3, v0, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;->blobLinkString:Ljava/lang/String;

    .line 206
    :cond_8b
    :goto_8b
    return-object v16

    .line 182
    .end local v17    # "ticket":Lmobisocial/longdan/LDProtocols$LDGetUploadTicketResponse;
    :cond_8c
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlib/client/ClientBlobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v3}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v3

    goto :goto_34

    .line 192
    .restart local v17    # "ticket":Lmobisocial/longdan/LDProtocols$LDGetUploadTicketResponse;
    :cond_97
    move-object/from16 v0, v17

    iget-object v3, v0, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketResponse;->BlobUploadTicket:Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;

    iget-object v3, v3, Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;->UploadUrl:Ljava/lang/String;

    if-eqz v3, :cond_8b

    .line 195
    :cond_9f
    const-wide/16 v6, 0x0

    invoke-virtual {v10, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 196
    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 197
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v4

    .line 198
    .local v4, "ins":Ljava/io/InputStream;
    move-object/from16 v0, v17

    iget-object v6, v0, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketResponse;->BlobUploadTicket:Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;

    move-object/from16 v3, p0

    move-object/from16 v5, p6

    move-object/from16 v7, p5

    move-wide/from16 v8, p2

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lmobisocial/omlib/client/ClientBlobUtils;->uploadSmallBlobWithProgress(Ljava/io/InputStream;Ljava/lang/String;Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;Lmobisocial/omlib/interfaces/BlobUploadListener;JLjava/util/concurrent/atomic/AtomicLong;Landroid/os/CancellationSignal;)Z

    move-result v18

    .line 199
    .local v18, "uploadSuccessful":Z
    if-eqz v18, :cond_9f

    .line 200
    new-instance v12, Lmobisocial/longdan/LDProtocols$LDVerifyUploadCompletedRequest;

    invoke-direct {v12}, Lmobisocial/longdan/LDProtocols$LDVerifyUploadCompletedRequest;-><init>()V

    .line 201
    .local v12, "completion":Lmobisocial/longdan/LDProtocols$LDVerifyUploadCompletedRequest;
    move-object/from16 v0, v17

    iget-object v3, v0, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketResponse;->BlobUploadTicket:Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;

    iput-object v3, v12, Lmobisocial/longdan/LDProtocols$LDVerifyUploadCompletedRequest;->BlobUploadTicket:Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlib/client/ClientBlobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v3}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v3

    const-class v5, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    const/4 v6, 0x1

    invoke-virtual {v3, v12, v5, v6}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Z)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v3

    check-cast v3, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    iget-object v3, v3, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;->Value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 203
    .local v13, "link":Ljava/lang/String;
    new-instance v16, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;

    .end local v16    # "remote":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    invoke-direct/range {v16 .. v16}, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;-><init>()V

    .line 204
    .restart local v16    # "remote":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    move-object/from16 v0, v16

    iput-object v13, v0, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;->blobLinkString:Ljava/lang/String;

    goto :goto_8b
.end method

.method private uploadSmallBlobWithProgress(Ljava/io/InputStream;Ljava/lang/String;Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;Lmobisocial/omlib/interfaces/BlobUploadListener;JLjava/util/concurrent/atomic/AtomicLong;Landroid/os/CancellationSignal;)Z
    .registers 26
    .param p1, "blobInputStream"    # Ljava/io/InputStream;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "ticket"    # Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;
    .param p4, "handler"    # Lmobisocial/omlib/interfaces/BlobUploadListener;
    .param p5, "totalLength"    # J
    .param p7, "uploaded"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p8, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 292
    if-nez p8, :cond_7

    .line 293
    new-instance p8, Landroid/os/CancellationSignal;

    .end local p8    # "cancellationSignal":Landroid/os/CancellationSignal;
    invoke-direct/range {p8 .. p8}, Landroid/os/CancellationSignal;-><init>()V

    .line 294
    .restart local p8    # "cancellationSignal":Landroid/os/CancellationSignal;
    :cond_7
    move-object/from16 v10, p8

    .line 296
    .local v10, "cancellation":Landroid/os/CancellationSignal;
    :try_start_9
    new-instance v14, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v14}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 297
    .local v14, "rb":Lcom/squareup/okhttp/Request$Builder;
    move-object/from16 v0, p3

    iget-object v3, v0, Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;->UploadHeaders:Ljava/util/HashMap;

    if-eqz v3, :cond_4d

    .line 298
    move-object/from16 v0, p3

    iget-object v3, v0, Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;->UploadHeaders:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 299
    .local v12, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v14, v3, v4}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;
    :try_end_3b
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_3b} :catch_3c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_3b} :catch_d5

    goto :goto_20

    .line 333
    .end local v12    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "rb":Lcom/squareup/okhttp/Request$Builder;
    :catch_3c
    move-exception v13

    .line 334
    .local v13, "malformedEx":Ljava/net/MalformedURLException;
    new-instance v3, Lmobisocial/longdan/exception/LongdanPermanentException;

    invoke-direct {v3, v13}, Lmobisocial/longdan/exception/LongdanPermanentException;-><init>(Ljava/lang/Exception;)V

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Lmobisocial/omlib/interfaces/BlobUploadListener;->onPermanentFailure(Lmobisocial/longdan/exception/LongdanException;)V

    .line 335
    new-instance v3, Lmobisocial/longdan/exception/LongdanNetworkException;

    invoke-direct {v3, v13}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 302
    .end local v13    # "malformedEx":Ljava/net/MalformedURLException;
    .restart local v14    # "rb":Lcom/squareup/okhttp/Request$Builder;
    :cond_4d
    :try_start_4d
    new-instance v2, Lmobisocial/omlib/client/ClientBlobUtils$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p7

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v10}, Lmobisocial/omlib/client/ClientBlobUtils$2;-><init>(Lmobisocial/omlib/client/ClientBlobUtils;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/concurrent/atomic/AtomicLong;Lmobisocial/omlib/interfaces/BlobUploadListener;JLandroid/os/CancellationSignal;)V

    .line 327
    .local v2, "body":Lcom/squareup/okhttp/RequestBody;
    move-object/from16 v0, p3

    iget-object v3, v0, Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;->UploadUrl:Ljava/lang/String;

    invoke-virtual {v14, v3}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/squareup/okhttp/Request$Builder;->put(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    .line 328
    new-instance v3, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v3}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    invoke-virtual {v14}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v15

    .line 329
    .local v15, "resp":Lcom/squareup/okhttp/Response;
    invoke-virtual {v15}, Lcom/squareup/okhttp/Response;->code()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_f2

    .line 330
    const-string v3, "ClientBlobUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed part upload with status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lcom/squareup/okhttp/Response;->code()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lcom/squareup/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got response code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lcom/squareup/okhttp/Response;->code()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " temporary error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d5
    .catch Ljava/net/MalformedURLException; {:try_start_4d .. :try_end_d5} :catch_3c
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_d5} :catch_d5

    .line 336
    .end local v2    # "body":Lcom/squareup/okhttp/RequestBody;
    .end local v14    # "rb":Lcom/squareup/okhttp/Request$Builder;
    .end local v15    # "resp":Lcom/squareup/okhttp/Response;
    :catch_d5
    move-exception v11

    .line 337
    .local v11, "e":Ljava/io/IOException;
    const-string v3, "ClientBlobUtils"

    const-string v4, "IOException"

    invoke-static {v3, v4, v11}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    new-instance v3, Lmobisocial/longdan/exception/LongdanNetworkException;

    invoke-direct {v3, v11}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/Exception;)V

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Lmobisocial/omlib/interfaces/BlobUploadListener;->onRetryableError(Lmobisocial/longdan/exception/LongdanNetworkException;)Z

    move-result v16

    .line 339
    .local v16, "retry":Z
    if-eqz v16, :cond_ec

    .line 340
    const/4 v3, 0x0

    .line 343
    .end local v11    # "e":Ljava/io/IOException;
    .end local v16    # "retry":Z
    :goto_eb
    return v3

    .line 341
    .restart local v11    # "e":Ljava/io/IOException;
    .restart local v16    # "retry":Z
    :cond_ec
    new-instance v3, Lmobisocial/longdan/exception/LongdanNetworkException;

    invoke-direct {v3, v11}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 343
    .end local v11    # "e":Ljava/io/IOException;
    .end local v16    # "retry":Z
    .restart local v2    # "body":Lcom/squareup/okhttp/RequestBody;
    .restart local v14    # "rb":Lcom/squareup/okhttp/Request$Builder;
    .restart local v15    # "resp":Lcom/squareup/okhttp/Response;
    :cond_f2
    const/4 v3, 0x1

    goto :goto_eb
.end method


# virtual methods
.method public ensureBlobSentDirect(Lmobisocial/longdan/LDObjects$BlobReferenceObj;Lmobisocial/longdan/LDProtocols$LDIdentity;Ljava/util/List;Ljava/lang/String;)V
    .registers 9
    .param p1, "blob"    # Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    .param p2, "sender"    # Lmobisocial/longdan/LDProtocols$LDIdentity;
    .param p4, "feedKind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobisocial/longdan/LDObjects$BlobReferenceObj;",
            "Lmobisocial/longdan/LDProtocols$LDIdentity;",
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDIdentity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    .local p3, "recipients":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDIdentity;>;"
    iget-object v2, p1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    if-nez v2, :cond_c

    .line 114
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "blobHash"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_c
    new-instance v1, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    invoke-direct {v1}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;-><init>()V

    .line 116
    .local v1, "pbr":Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;
    iget-object v2, p1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    iput-object v2, v1, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->blobHash:[B

    .line 117
    iput-object p2, v1, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->sender:Lmobisocial/longdan/LDProtocols$LDIdentity;

    .line 118
    iput-object p3, v1, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->recipients:Ljava/util/List;

    .line 119
    iput-object p4, v1, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->feedKind:Ljava/lang/String;

    .line 120
    iget-object v2, p1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->MimeType:Ljava/lang/String;

    iput-object v2, v1, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->mimeType:Ljava/lang/String;

    .line 121
    iget-object v2, p1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Category:Ljava/lang/String;

    iput-object v2, v1, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->category:Ljava/lang/String;

    .line 122
    iget-object v2, p1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->PushType:Ljava/lang/String;

    iput-object v2, v1, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->pushType:Ljava/lang/String;

    .line 123
    iget-object v2, p1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->NoBackup:Ljava/lang/Boolean;

    if-nez v2, :cond_3f

    const/4 v2, 0x0

    :goto_2c
    iput-boolean v2, v1, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->noBackup:Z

    .line 124
    new-instance v0, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;

    iget-object v2, p0, Lmobisocial/omlib/client/ClientBlobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-direct {v0, v2, v1}, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;-><init>(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;)V

    .line 125
    .local v0, "job":Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;
    iget-object v2, p0, Lmobisocial/omlib/client/ClientBlobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;)V

    .line 126
    return-void

    .line 123
    .end local v0    # "job":Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;
    :cond_3f
    iget-object v2, p1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->NoBackup:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_2c
.end method

.method public ensureBlobSentToFeed(Lmobisocial/longdan/LDObjects$BlobReferenceObj;Lmobisocial/longdan/LDProtocols$LDFeed;Ljava/lang/Long;)V
    .registers 5
    .param p1, "blob"    # Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    .param p2, "feed"    # Lmobisocial/longdan/LDProtocols$LDFeed;
    .param p3, "objId"    # Ljava/lang/Long;

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lmobisocial/omlib/client/ClientBlobUtils;->ensureBlobSentToFeed(Lmobisocial/longdan/LDObjects$BlobReferenceObj;Lmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/omlib/jobs/BaseJobWithBlob;Ljava/lang/Long;)V

    .line 130
    return-void
.end method

.method public ensureBlobSentToFeed(Lmobisocial/longdan/LDObjects$BlobReferenceObj;Lmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/omlib/jobs/BaseJobWithBlob;Ljava/lang/Long;)V
    .registers 10
    .param p1, "blob"    # Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    .param p2, "feed"    # Lmobisocial/longdan/LDProtocols$LDFeed;
    .param p3, "postJob"    # Lmobisocial/omlib/jobs/BaseJobWithBlob;
    .param p4, "objId"    # Ljava/lang/Long;

    .prologue
    const/4 v3, 0x0

    .line 133
    iget-object v2, p1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    if-nez v2, :cond_d

    .line 134
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "blobHash"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_d
    new-instance v1, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    invoke-direct {v1}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;-><init>()V

    .line 136
    .local v1, "pbr":Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;
    iget-object v2, p1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    iput-object v2, v1, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->blobHash:[B

    .line 137
    iput-object p2, v1, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 138
    iget-object v2, p1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->MimeType:Ljava/lang/String;

    iput-object v2, v1, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->mimeType:Ljava/lang/String;

    .line 139
    iget-object v2, p1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Category:Ljava/lang/String;

    iput-object v2, v1, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->category:Ljava/lang/String;

    .line 140
    iget-object v2, p1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->PushType:Ljava/lang/String;

    iput-object v2, v1, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->pushType:Ljava/lang/String;

    .line 141
    iget-object v2, p1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->NoBackup:Ljava/lang/Boolean;

    if-nez v2, :cond_51

    move v2, v3

    :goto_29
    iput-boolean v2, v1, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->noBackup:Z

    .line 142
    new-instance v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;

    invoke-direct {v0}, Lmobisocial/omlib/jobs/BlobUploadJobHandler;-><init>()V

    .line 143
    .local v0, "job":Lmobisocial/omlib/jobs/BlobUploadJobHandler;
    iput-object p4, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->referenceObjId:Ljava/lang/Long;

    .line 144
    iput-object p3, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->postJob:Lmobisocial/omlib/jobs/BaseJobWithBlob;

    .line 145
    iput-object v1, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->request:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    .line 146
    sget-object v2, Lmobisocial/omlib/client/ClientBlobUtils;->THUMBNAIL_CATEGORY:Ljava/lang/String;

    iget-object v4, p1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Category:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, v1, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    if-eqz v2, :cond_45

    const/4 v3, 0x1

    :cond_45
    iput-boolean v3, v0, Lmobisocial/omlib/jobs/BlobUploadJobHandler;->inline:Z

    .line 147
    iget-object v2, p0, Lmobisocial/omlib/client/ClientBlobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;)V

    .line 148
    return-void

    .line 141
    .end local v0    # "job":Lmobisocial/omlib/jobs/BlobUploadJobHandler;
    :cond_51
    iget-object v2, p1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->NoBackup:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_29
.end method

.method public ensureBlobSource(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;[BLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;)V
    .registers 19
    .param p1, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p3, "hash"    # [B
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "timestamp"    # J
    .param p7, "mimeType"    # Ljava/lang/String;
    .param p8, "category"    # Ljava/lang/String;
    .param p9, "length"    # Ljava/lang/Long;
    .param p10, "encrypted"    # Ljava/lang/Boolean;
    .param p11, "feedId"    # Ljava/lang/Long;

    .prologue
    .line 422
    const-class v4, Lmobisocial/omlib/db/entity/OMBlob;

    invoke-virtual {p1, v4, p3}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v2

    check-cast v2, Lmobisocial/omlib/db/entity/OMBlob;

    .line 423
    .local v2, "blobRecord":Lmobisocial/omlib/db/entity/OMBlob;
    const/4 v3, 0x0

    .line 424
    .local v3, "sourceRecord":Lmobisocial/omlib/db/entity/OMBlobSource;
    if-nez v2, :cond_3c

    .line 425
    new-instance v2, Lmobisocial/omlib/db/entity/OMBlob;

    .end local v2    # "blobRecord":Lmobisocial/omlib/db/entity/OMBlob;
    invoke-direct {v2}, Lmobisocial/omlib/db/entity/OMBlob;-><init>()V

    .line 426
    .restart local v2    # "blobRecord":Lmobisocial/omlib/db/entity/OMBlob;
    iput-object p3, v2, Lmobisocial/omlib/db/entity/OMBlob;->blobHash:[B

    .line 427
    move-object/from16 v0, p9

    iput-object v0, v2, Lmobisocial/omlib/db/entity/OMBlob;->size:Ljava/lang/Long;

    .line 428
    invoke-virtual {p1, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->insertObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 432
    :goto_19
    if-nez v3, :cond_45

    .line 433
    new-instance v3, Lmobisocial/omlib/db/entity/OMBlobSource;

    .end local v3    # "sourceRecord":Lmobisocial/omlib/db/entity/OMBlobSource;
    invoke-direct {v3}, Lmobisocial/omlib/db/entity/OMBlobSource;-><init>()V

    .line 434
    .restart local v3    # "sourceRecord":Lmobisocial/omlib/db/entity/OMBlobSource;
    iget-object v4, v2, Lmobisocial/omlib/db/entity/OMBlob;->id:Ljava/lang/Long;

    iput-object v4, v3, Lmobisocial/omlib/db/entity/OMBlobSource;->blobId:Ljava/lang/Long;

    .line 435
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lmobisocial/omlib/db/entity/OMBlobSource;->timestamp:Ljava/lang/Long;

    .line 436
    iput-object p8, v3, Lmobisocial/omlib/db/entity/OMBlobSource;->category:Ljava/lang/String;

    .line 437
    iput-object p7, v3, Lmobisocial/omlib/db/entity/OMBlobSource;->mimeType:Ljava/lang/String;

    .line 438
    move-object/from16 v0, p11

    iput-object v0, v3, Lmobisocial/omlib/db/entity/OMBlobSource;->feedId:Ljava/lang/Long;

    .line 439
    move-object/from16 v0, p10

    iput-object v0, v3, Lmobisocial/omlib/db/entity/OMBlobSource;->encrypted:Ljava/lang/Boolean;

    .line 440
    iput-object p4, v3, Lmobisocial/omlib/db/entity/OMBlobSource;->source:Ljava/lang/String;

    .line 441
    invoke-virtual {p1, v3}, Lmobisocial/omlib/db/OMSQLiteHelper;->insertObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 454
    :cond_3b
    :goto_3b
    return-void

    .line 430
    :cond_3c
    const-class v4, Lmobisocial/omlib/db/entity/OMBlobSource;

    invoke-virtual {p1, v4, p4}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v3

    .end local v3    # "sourceRecord":Lmobisocial/omlib/db/entity/OMBlobSource;
    check-cast v3, Lmobisocial/omlib/db/entity/OMBlobSource;

    .restart local v3    # "sourceRecord":Lmobisocial/omlib/db/entity/OMBlobSource;
    goto :goto_19

    .line 443
    :cond_45
    iget-object v4, v3, Lmobisocial/omlib/db/entity/OMBlobSource;->timestamp:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, p5, v4

    if-lez v4, :cond_3b

    .line 444
    iget-object v4, v2, Lmobisocial/omlib/db/entity/OMBlob;->id:Ljava/lang/Long;

    iput-object v4, v3, Lmobisocial/omlib/db/entity/OMBlobSource;->blobId:Ljava/lang/Long;

    .line 445
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lmobisocial/omlib/db/entity/OMBlobSource;->timestamp:Ljava/lang/Long;

    .line 446
    iput-object p8, v3, Lmobisocial/omlib/db/entity/OMBlobSource;->category:Ljava/lang/String;

    .line 447
    iput-object p7, v3, Lmobisocial/omlib/db/entity/OMBlobSource;->mimeType:Ljava/lang/String;

    .line 448
    move-object/from16 v0, p11

    iput-object v0, v3, Lmobisocial/omlib/db/entity/OMBlobSource;->feedId:Ljava/lang/Long;

    .line 449
    move-object/from16 v0, p10

    iput-object v0, v3, Lmobisocial/omlib/db/entity/OMBlobSource;->encrypted:Ljava/lang/Boolean;

    .line 450
    iput-object p4, v3, Lmobisocial/omlib/db/entity/OMBlobSource;->source:Ljava/lang/String;

    .line 451
    invoke-virtual {p1, v3}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    goto :goto_3b
.end method

.method public ensurePermanentBlobSource(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/Long;)[B
    .registers 22
    .param p1, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;
    .param p3, "brl"    # Ljava/lang/String;
    .param p4, "decryptedHash"    # [B
    .param p5, "mimeType"    # Ljava/lang/String;
    .param p6, "length"    # Ljava/lang/Long;

    .prologue
    .line 411
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lmobisocial/omlib/client/ClientBlobUtils;->hashFromLongdanUrl(Ljava/lang/String;)[B

    move-result-object v2

    .line 412
    .local v2, "hash":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 413
    .local v8, "timestamp":J
    if-eqz p4, :cond_24

    .line 414
    const/4 v11, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x0

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    move-object/from16 v10, p5

    move-object/from16 v12, p6

    invoke-virtual/range {v3 .. v14}, Lmobisocial/omlib/client/ClientBlobUtils;->ensureBlobSource(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;[BLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;)V

    .line 418
    :goto_23
    return-object v2

    .line 416
    :cond_24
    const/4 v11, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x0

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v2

    move-object/from16 v7, p3

    move-object/from16 v10, p5

    move-object/from16 v12, p6

    invoke-virtual/range {v3 .. v14}, Lmobisocial/omlib/client/ClientBlobUtils;->ensureBlobSource(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;[BLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;)V

    goto :goto_23
.end method

.method public getBlobForHash([BZLmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;Landroid/os/CancellationSignal;)V
    .registers 6
    .param p1, "blobHash"    # [B
    .param p2, "frontOfQueue"    # Z
    .param p3, "listener"    # Lmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;
    .param p4, "signal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 71
    iget-object v0, p0, Lmobisocial/omlib/client/ClientBlobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->getBlobDownloader()Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->getBlobForHash([BZLmobisocial/omlib/client/interfaces/LongdanBlobDownloadListener;Landroid/os/CancellationSignal;)V

    .line 72
    return-void
.end method

.method public getBlobForHashAndWait([BZILandroid/os/CancellationSignal;)Ljava/io/File;
    .registers 6
    .param p1, "blobHash"    # [B
    .param p2, "frontOfQueue"    # Z
    .param p3, "timeout"    # I
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lmobisocial/omlib/client/ClientBlobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->getBlobDownloader()Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->getBlobForHashAndWait([BZILandroid/os/CancellationSignal;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getBlobForLink(Ljava/lang/String;ZLmobisocial/omlib/interfaces/BlobDownloadListener;Landroid/os/CancellationSignal;)V
    .registers 13
    .param p1, "link"    # Ljava/lang/String;
    .param p2, "frontOfQueue"    # Z
    .param p3, "listener"    # Lmobisocial/omlib/interfaces/BlobDownloadListener;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 75
    iget-object v0, p0, Lmobisocial/omlib/client/ClientBlobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    invoke-virtual {v0, p1}, Lmobisocial/omlib/client/ClientBlobUtils;->hashFromLongdanUrl(Ljava/lang/String;)[B

    move-result-object v2

    .line 76
    .local v2, "blobHash":[B
    if-eqz v2, :cond_19

    .line 77
    iget-object v7, p0, Lmobisocial/omlib/client/ClientBlobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    new-instance v0, Lmobisocial/omlib/client/ClientBlobUtils$1;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lmobisocial/omlib/client/ClientBlobUtils$1;-><init>(Lmobisocial/omlib/client/ClientBlobUtils;[BLjava/lang/String;ZLmobisocial/omlib/interfaces/BlobDownloadListener;Landroid/os/CancellationSignal;)V

    invoke-virtual {v7, v0}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThread(Lmobisocial/omlib/db/DatabaseRunnable;)V

    .line 86
    :cond_19
    return-void
.end method

.method public getBlobRootDir()Ljava/io/File;
    .registers 4

    .prologue
    .line 89
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmobisocial/omlib/client/ClientBlobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->getPlatformConfiguration()Lmobisocial/omlib/client/PlatformConfiguration;

    move-result-object v1

    iget-object v1, v1, Lmobisocial/omlib/client/PlatformConfiguration;->dataPath:Ljava/lang/String;

    const-string v2, "blobs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getStoragePathForBlobWithHash([B)Ljava/io/File;
    .registers 8
    .param p1, "blobHash"    # [B

    .prologue
    const/4 v5, 0x0

    .line 93
    invoke-static {p1}, Lmobisocial/omlib/model/OmletModel$Blobs;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "hex":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lmobisocial/omlib/client/ClientBlobUtils;->getBlobRootDir()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    .local v0, "blobDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "%s.dat"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method getTempStoragePathForBlobWithHash([B)Ljava/io/File;
    .registers 8
    .param p1, "blobHash"    # [B

    .prologue
    const/4 v5, 0x0

    .line 99
    invoke-static {p1}, Lmobisocial/omlib/model/OmletModel$Blobs;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "hex":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lmobisocial/omlib/client/ClientBlobUtils;->getBlobRootDir()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .local v0, "blobDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "%s.tmp"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method public hashFromLongdanUrl(Ljava/lang/String;)[B
    .registers 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 507
    if-nez p1, :cond_4

    .line 524
    :cond_3
    :goto_3
    return-object v4

    .line 509
    :cond_4
    const-string v5, "hosted://"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 510
    const-string v4, "#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 511
    .local v3, "lastIndex":I
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, "hash":Ljava/lang/String;
    invoke-static {v1}, Lmobisocial/omlib/client/ClientBlobUtils;->fromBase64String(Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_3

    .line 513
    .end local v1    # "hash":Ljava/lang/String;
    .end local v3    # "lastIndex":I
    :cond_1d
    const-string v5, "longdan://"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 514
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 515
    .restart local v3    # "lastIndex":I
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 516
    .local v2, "key_part":Ljava/lang/String;
    const-string v5, "%3D"

    const-string v6, "="

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 518
    :try_start_39
    invoke-static {v2}, Lmobisocial/omlib/client/ClientBlobUtils;->fromBase64String(Ljava/lang/String;)[B
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3e

    move-result-object v4

    goto :goto_3

    .line 519
    :catch_3e
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Omlib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is bad base64!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public saveAndHashBlob(Ljava/io/InputStream;)Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    .registers 20
    .param p1, "blobStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    const/4 v7, 0x0

    .line 463
    .local v7, "fout":Ljava/io/FileOutputStream;
    invoke-direct/range {p0 .. p0}, Lmobisocial/omlib/client/ClientBlobUtils;->getTempStoragePathForBlob()Ljava/io/File;

    move-result-object v14

    .line 464
    .local v14, "tmp":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 465
    const-wide/16 v10, 0x0

    .line 467
    .local v10, "length":J
    :try_start_e
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_13} :catch_62
    .catchall {:try_start_e .. :try_end_13} :catchall_6d

    .line 468
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .local v8, "fout":Ljava/io/FileOutputStream;
    :try_start_13
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 469
    .local v4, "bout":Ljava/io/BufferedOutputStream;
    const-string v15, "MD5"

    invoke-static {v15}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 470
    .local v9, "md5":Ljava/security/MessageDigest;
    const/16 v15, 0x1000

    new-array v5, v15, [B

    .line 472
    .local v5, "bytes":[B
    :goto_22
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .local v13, "read":I
    if-lez v13, :cond_38

    .line 473
    const/4 v15, 0x0

    invoke-virtual {v9, v5, v15, v13}, Ljava/security/MessageDigest;->update([BII)V

    .line 474
    const/4 v15, 0x0

    invoke-virtual {v4, v5, v15, v13}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 475
    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v10, v10, v16

    goto :goto_22

    .line 477
    :cond_38
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_3b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_3b} :catch_9a
    .catchall {:try_start_13 .. :try_end_3b} :catchall_97

    .line 481
    if-eqz v8, :cond_40

    .line 483
    :try_start_3d
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_8f

    .line 488
    :cond_40
    :goto_40
    :try_start_40
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_91

    .line 492
    :goto_43
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 493
    .local v3, "blobHash":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lmobisocial/omlib/client/ClientBlobUtils;->getStoragePathForBlobWithHash([B)Ljava/io/File;

    move-result-object v12

    .line 494
    .local v12, "path":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 495
    invoke-virtual {v14, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v15

    if-nez v15, :cond_77

    .line 496
    new-instance v15, Ljava/io/IOException;

    const-string v16, "Failed to rename file"

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 478
    .end local v3    # "blobHash":[B
    .end local v4    # "bout":Ljava/io/BufferedOutputStream;
    .end local v5    # "bytes":[B
    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .end local v9    # "md5":Ljava/security/MessageDigest;
    .end local v12    # "path":Ljava/io/File;
    .end local v13    # "read":I
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catch_62
    move-exception v6

    .line 479
    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_63
    :try_start_63
    new-instance v15, Ljava/io/IOException;

    const-string v16, "MD5 not available on this platform"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_6d

    .line 481
    .end local v6    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_6d
    move-exception v15

    :goto_6e
    if-eqz v7, :cond_73

    .line 483
    :try_start_70
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_93

    .line 488
    :cond_73
    :goto_73
    :try_start_73
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_95

    .line 490
    :goto_76
    throw v15

    .line 498
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "blobHash":[B
    .restart local v4    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bytes":[B
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "md5":Ljava/security/MessageDigest;
    .restart local v12    # "path":Ljava/io/File;
    .restart local v13    # "read":I
    :cond_77
    new-instance v2, Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    invoke-direct {v2}, Lmobisocial/longdan/LDObjects$BlobReferenceObj;-><init>()V

    .line 499
    .local v2, "blob":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    iput-object v3, v2, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    .line 500
    invoke-virtual {v12}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Source:Ljava/lang/String;

    .line 501
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iput-object v15, v2, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Length:Ljava/lang/Long;

    .line 502
    return-object v2

    .line 484
    .end local v2    # "blob":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    .end local v3    # "blobHash":[B
    .end local v12    # "path":Ljava/io/File;
    :catch_8f
    move-exception v15

    goto :goto_40

    .line 489
    :catch_91
    move-exception v15

    goto :goto_43

    .line 484
    .end local v4    # "bout":Ljava/io/BufferedOutputStream;
    .end local v5    # "bytes":[B
    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .end local v9    # "md5":Ljava/security/MessageDigest;
    .end local v13    # "read":I
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catch_93
    move-exception v16

    goto :goto_73

    .line 489
    :catch_95
    move-exception v16

    goto :goto_76

    .line 481
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    :catchall_97
    move-exception v15

    move-object v7, v8

    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    goto :goto_6e

    .line 478
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "fout":Ljava/io/FileOutputStream;
    :catch_9a
    move-exception v6

    move-object v7, v8

    .end local v8    # "fout":Ljava/io/FileOutputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    goto :goto_63
.end method

.method public uploadBlobWithProgress(Ljava/io/File;Lmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/omlib/interfaces/BlobUploadListener;Ljava/lang/String;Landroid/os/CancellationSignal;)Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    .registers 14
    .param p1, "file"    # Ljava/io/File;
    .param p2, "feed"    # Lmobisocial/longdan/LDProtocols$LDFeed;
    .param p3, "blobUploadListener"    # Lmobisocial/omlib/interfaces/BlobUploadListener;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_c

    .line 155
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 157
    :cond_c
    iget-object v0, p0, Lmobisocial/omlib/client/ClientBlobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->incrementInterest()V

    .line 159
    :try_start_15
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v1, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    .local v1, "randomAccessFile":Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 161
    .local v2, "final_length":J
    const-wide/32 v4, 0x500000

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3a

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 162
    invoke-direct/range {v0 .. v7}, Lmobisocial/omlib/client/ClientBlobUtils;->uploadSinglePart(Ljava/io/RandomAccessFile;JLmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/omlib/interfaces/BlobUploadListener;Ljava/lang/String;Landroid/os/CancellationSignal;)Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    :try_end_2f
    .catchall {:try_start_15 .. :try_end_2f} :catchall_4d

    move-result-object v0

    .line 167
    iget-object v4, p0, Lmobisocial/omlib/client/ClientBlobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v4

    invoke-virtual {v4}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->decrementInterest()V

    :goto_39
    return-object v0

    :cond_3a
    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 164
    :try_start_3f
    invoke-direct/range {v0 .. v7}, Lmobisocial/omlib/client/ClientBlobUtils;->uploadMultiPart(Ljava/io/RandomAccessFile;JLmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/omlib/interfaces/BlobUploadListener;Ljava/lang/String;Landroid/os/CancellationSignal;)Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4d

    move-result-object v0

    .line 167
    iget-object v4, p0, Lmobisocial/omlib/client/ClientBlobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v4

    invoke-virtual {v4}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->decrementInterest()V

    goto :goto_39

    .end local v1    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v2    # "final_length":J
    :catchall_4d
    move-exception v0

    iget-object v4, p0, Lmobisocial/omlib/client/ClientBlobUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v4

    invoke-virtual {v4}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->decrementInterest()V

    throw v0
.end method

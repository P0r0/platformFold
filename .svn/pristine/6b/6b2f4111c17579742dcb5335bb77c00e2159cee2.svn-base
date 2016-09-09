.class Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;
.super Ljava/lang/Object;
.source "LongdanBlobUploadProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/LongdanBlobUploadProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlobUploadTask"
.end annotation


# instance fields
.field final mListener:Lmobisocial/omlib/client/interfaces/LongdanBlobUploadListener;

.field final mRequest:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

.field final synthetic this$0:Lmobisocial/omlib/client/LongdanBlobUploadProcessor;


# direct methods
.method public constructor <init>(Lmobisocial/omlib/client/LongdanBlobUploadProcessor;Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;Lmobisocial/omlib/client/interfaces/LongdanBlobUploadListener;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanBlobUploadProcessor;
    .param p2, "pbr"    # Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;
    .param p3, "listener"    # Lmobisocial/omlib/client/interfaces/LongdanBlobUploadListener;

    .prologue
    .line 129
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->this$0:Lmobisocial/omlib/client/LongdanBlobUploadProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p2, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->mRequest:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    .line 131
    iput-object p3, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->mListener:Lmobisocial/omlib/client/interfaces/LongdanBlobUploadListener;

    .line 132
    return-void
.end method


# virtual methods
.method failedUpload(Lmobisocial/longdan/exception/LongdanException;)V
    .registers 3
    .param p1, "e"    # Lmobisocial/longdan/exception/LongdanException;

    .prologue
    .line 272
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->mListener:Lmobisocial/omlib/client/interfaces/LongdanBlobUploadListener;

    if-eqz v0, :cond_9

    .line 273
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->mListener:Lmobisocial/omlib/client/interfaces/LongdanBlobUploadListener;

    invoke-interface {v0, p1}, Lmobisocial/omlib/client/interfaces/LongdanBlobUploadListener;->onBlobUploadFailed(Lmobisocial/longdan/exception/LongdanException;)V

    .line 274
    :cond_9
    return-void
.end method

.method handleBlobUpload()Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    .registers 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->mRequest:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    move-object/from16 v20, v0

    .line 151
    .local v20, "request":Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;
    const/16 v19, 0x0

    .line 152
    .local v19, "remote":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->this$0:Lmobisocial/omlib/client/LongdanBlobUploadProcessor;

    move-object/from16 v28, v0

    # getter for: Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static/range {v28 .. v28}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->access$000(Lmobisocial/omlib/client/LongdanBlobUploadProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    move-object/from16 v28, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->blobHash:[B

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lmobisocial/omlib/client/ClientBlobUtils;->getStoragePathForBlobWithHash([B)Ljava/io/File;

    move-result-object v22

    .line 153
    .local v22, "source":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->isFile()Z

    move-result v28

    if-nez v28, :cond_4f

    .line 154
    new-instance v28, Lmobisocial/longdan/exception/LongdanClientException;

    new-instance v29, Ljava/io/FileNotFoundException;

    const-string v30, "Blob not found on disk %s"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->blobHash:[B

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lmobisocial/omlib/model/OmletModel$Blobs;->bytesToHex([B)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v28 .. v29}, Lmobisocial/longdan/exception/LongdanClientException;-><init>(Ljava/lang/Exception;)V

    throw v28

    .line 155
    :cond_4f
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 156
    .local v8, "blobSize":J
    move-object/from16 v0, v20

    iget-object v15, v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->blobHash:[B

    .line 157
    .local v15, "final_hash":[B
    move-wide/from16 v26, v8

    .line 158
    .local v26, "uploadLength":J
    const/4 v4, 0x0

    .line 159
    .local v4, "aesCipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x0

    .line 160
    .local v5, "aesKey":Ljava/security/Key;
    const/16 v16, 0x0

    .line 186
    .local v16, "iv":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v25, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;

    invoke-direct/range {v25 .. v25}, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;-><init>()V

    .line 187
    .local v25, "upr":Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;
    move-object/from16 v0, v20

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    move-object/from16 v28, v0

    if-eqz v28, :cond_ff

    move-object/from16 v0, v20

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDFeed;->Account:Ljava/lang/String;

    move-object/from16 v28, v0

    :goto_76
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    iput-object v0, v1, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;->Account:Ljava/lang/String;

    .line 188
    new-instance v28, Lmobisocial/longdan/LDProtocols$LDBlobMetadata;

    invoke-direct/range {v28 .. v28}, Lmobisocial/longdan/LDProtocols$LDBlobMetadata;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    iput-object v0, v1, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;->Metadata:Lmobisocial/longdan/LDProtocols$LDBlobMetadata;

    .line 189
    move-object/from16 v0, v25

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;->Metadata:Lmobisocial/longdan/LDProtocols$LDBlobMetadata;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iput-object v15, v0, Lmobisocial/longdan/LDProtocols$LDBlobMetadata;->Hash:[B

    .line 190
    move-object/from16 v0, v25

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;->Metadata:Lmobisocial/longdan/LDProtocols$LDBlobMetadata;

    move-object/from16 v28, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->mimeType:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lmobisocial/longdan/LDProtocols$LDBlobMetadata;->MimeType:Ljava/lang/String;

    .line 191
    move-object/from16 v0, v25

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;->Metadata:Lmobisocial/longdan/LDProtocols$LDBlobMetadata;

    move-object/from16 v28, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v28

    iput-wide v0, v2, Lmobisocial/longdan/LDProtocols$LDBlobMetadata;->Size:J

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->this$0:Lmobisocial/omlib/client/LongdanBlobUploadProcessor;

    move-object/from16 v28, v0

    # getter for: Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static/range {v28 .. v28}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->access$000(Lmobisocial/omlib/client/LongdanBlobUploadProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v28

    const-class v29, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketResponse;

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v24

    check-cast v24, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketResponse;

    .line 193
    .local v24, "ticket":Lmobisocial/longdan/LDProtocols$LDGetUploadTicketResponse;
    move-object/from16 v0, v24

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketResponse;->BlobUploadTicket:Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;->AlreadyUploaded:Z

    move/from16 v28, v0

    if-eqz v28, :cond_115

    .line 194
    new-instance v19, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;

    .end local v19    # "remote":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    invoke-direct/range {v19 .. v19}, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;-><init>()V

    .line 195
    .restart local v19    # "remote":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    move-object/from16 v0, v24

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketResponse;->BlobUploadTicket:Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;->BlobLinkString:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    iput-object v0, v1, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;->blobLinkString:Ljava/lang/String;

    .line 196
    if-eqz v4, :cond_fe

    .line 197
    move-object/from16 v0, v20

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->blobHash:[B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    iput-object v0, v1, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;->decryptedHash:[B

    .line 263
    :cond_fe
    :goto_fe
    return-object v19

    .line 187
    .end local v24    # "ticket":Lmobisocial/longdan/LDProtocols$LDGetUploadTicketResponse;
    :cond_ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->this$0:Lmobisocial/omlib/client/LongdanBlobUploadProcessor;

    move-object/from16 v28, v0

    # getter for: Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static/range {v28 .. v28}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->access$000(Lmobisocial/omlib/client/LongdanBlobUploadProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_76

    .line 198
    .restart local v24    # "ticket":Lmobisocial/longdan/LDProtocols$LDGetUploadTicketResponse;
    :cond_115
    move-object/from16 v0, v24

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketResponse;->BlobUploadTicket:Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;->UploadUrl:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_fe

    .line 199
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 200
    .local v13, "fileInput":Ljava/io/InputStream;
    if-eqz v4, :cond_13b

    .line 202
    const/16 v28, 0x1

    :try_start_12e
    move/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v5, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 203
    new-instance v14, Ljavax/crypto/CipherInputStream;

    invoke-direct {v14, v13, v4}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_13a} :catch_185

    .end local v13    # "fileInput":Ljava/io/InputStream;
    .local v14, "fileInput":Ljava/io/InputStream;
    move-object v13, v14

    .line 208
    .end local v14    # "fileInput":Ljava/io/InputStream;
    .restart local v13    # "fileInput":Ljava/io/InputStream;
    :cond_13b
    move-object v6, v13

    .line 209
    .local v6, "blobInputStream":Ljava/io/InputStream;
    new-instance v18, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct/range {v18 .. v18}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 210
    .local v18, "rb":Lcom/squareup/okhttp/Request$Builder;
    move-object/from16 v0, v24

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketResponse;->BlobUploadTicket:Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;->UploadHeaders:Ljava/util/HashMap;

    move-object/from16 v28, v0

    if-eqz v28, :cond_18e

    .line 211
    move-object/from16 v0, v24

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketResponse;->BlobUploadTicket:Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;->UploadHeaders:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_163
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_18e

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 212
    .local v12, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_163

    .line 204
    .end local v6    # "blobInputStream":Ljava/io/InputStream;
    .end local v12    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "rb":Lcom/squareup/okhttp/Request$Builder;
    :catch_185
    move-exception v11

    .line 205
    .local v11, "e":Ljava/lang/Exception;
    new-instance v28, Ljava/lang/IllegalStateException;

    const-string v29, "Used the key once, but then it broke."

    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 215
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v6    # "blobInputStream":Ljava/io/InputStream;
    .restart local v18    # "rb":Lcom/squareup/okhttp/Request$Builder;
    :cond_18e
    new-instance v7, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v7, v0, v1, v6}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask$1;-><init>(Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;Lmobisocial/longdan/LDProtocols$LDGetUploadTicketRequest;Ljava/io/InputStream;)V

    .line 246
    .local v7, "body":Lcom/squareup/okhttp/RequestBody;
    move-object/from16 v0, v24

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketResponse;->BlobUploadTicket:Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;->UploadUrl:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lcom/squareup/okhttp/Request$Builder;->put(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    .line 247
    new-instance v28, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct/range {v28 .. v28}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v21

    .line 248
    .local v21, "resp":Lcom/squareup/okhttp/Response;
    invoke-virtual/range {v21 .. v21}, Lcom/squareup/okhttp/Response;->code()I

    move-result v28

    const/16 v29, 0xc8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_21b

    .line 249
    new-instance v10, Lmobisocial/longdan/LDProtocols$LDVerifyUploadCompletedRequest;

    invoke-direct {v10}, Lmobisocial/longdan/LDProtocols$LDVerifyUploadCompletedRequest;-><init>()V

    .line 250
    .local v10, "completion":Lmobisocial/longdan/LDProtocols$LDVerifyUploadCompletedRequest;
    move-object/from16 v0, v24

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDGetUploadTicketResponse;->BlobUploadTicket:Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iput-object v0, v10, Lmobisocial/longdan/LDProtocols$LDVerifyUploadCompletedRequest;->BlobUploadTicket:Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->this$0:Lmobisocial/omlib/client/LongdanBlobUploadProcessor;

    move-object/from16 v28, v0

    # getter for: Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static/range {v28 .. v28}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->access$000(Lmobisocial/omlib/client/LongdanBlobUploadProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v28

    const-class v29, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v10, v1}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v28

    check-cast v28, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    move-object/from16 v0, v28

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;->Value:Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 252
    .local v17, "link":Ljava/lang/String;
    new-instance v19, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;

    .end local v19    # "remote":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    invoke-direct/range {v19 .. v19}, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;-><init>()V

    .line 253
    .restart local v19    # "remote":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    iput-object v0, v1, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;->blobLinkString:Ljava/lang/String;

    .line 254
    if-eqz v4, :cond_fe

    .line 255
    move-object/from16 v0, v20

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->blobHash:[B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    iput-object v0, v1, Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;->decryptedHash:[B

    goto/16 :goto_fe

    .line 257
    .end local v10    # "completion":Lmobisocial/longdan/LDProtocols$LDVerifyUploadCompletedRequest;
    .end local v17    # "link":Ljava/lang/String;
    :cond_21b
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v21 .. v21}, Lcom/squareup/okhttp/Response;->code()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v21 .. v21}, Lcom/squareup/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 258
    .local v23, "status":Ljava/lang/String;
    sget v28, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_266

    .line 259
    sget-object v28, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Finished upload with status="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_266
    new-instance v28, Lmobisocial/longdan/exception/LongdanNetworkException;

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/String;)V

    throw v28
.end method

.method public run()V
    .registers 5

    .prologue
    .line 137
    :try_start_0
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->this$0:Lmobisocial/omlib/client/LongdanBlobUploadProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v2}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->access$000(Lmobisocial/omlib/client/LongdanBlobUploadProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v2

    iget-object v2, v2, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    iget-object v2, v2, Lmobisocial/omlib/client/ClientMessagingUtils;->notification:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    iget-object v3, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->mRequest:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->blobHash:[B

    invoke-virtual {v2, v3}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->notifyBlobTransferBegin([B)V

    .line 138
    invoke-virtual {p0}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->handleBlobUpload()Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;

    move-result-object v1

    .line 139
    .local v1, "remote":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    invoke-virtual {p0, v1}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->successfulUpload(Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;)V

    .line 140
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->this$0:Lmobisocial/omlib/client/LongdanBlobUploadProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v2}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->access$000(Lmobisocial/omlib/client/LongdanBlobUploadProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v2

    iget-object v2, v2, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    iget-object v2, v2, Lmobisocial/omlib/client/ClientMessagingUtils;->notification:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    iget-object v3, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->mRequest:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->blobHash:[B

    invoke-virtual {v2, v3}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->notifyBlobTransferComplete([B)V
    :try_end_29
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_0 .. :try_end_29} :catch_2a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_29} :catch_40

    .line 147
    .end local v1    # "remote":Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;
    :goto_29
    return-void

    .line 141
    :catch_2a
    move-exception v0

    .line 142
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    invoke-virtual {p0, v0}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->failedUpload(Lmobisocial/longdan/exception/LongdanException;)V

    .line 143
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->this$0:Lmobisocial/omlib/client/LongdanBlobUploadProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v2}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor;->access$000(Lmobisocial/omlib/client/LongdanBlobUploadProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v2

    iget-object v2, v2, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    iget-object v2, v2, Lmobisocial/omlib/client/ClientMessagingUtils;->notification:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    iget-object v3, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->mRequest:Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$PendingBlobUploadRequest;->blobHash:[B

    invoke-virtual {v2, v3}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->notifyBlobTransferFailed([B)V

    goto :goto_29

    .line 144
    .end local v0    # "e":Lmobisocial/longdan/exception/LongdanException;
    :catch_40
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lmobisocial/longdan/exception/LongdanNetworkException;

    invoke-direct {v2, v0}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v2}, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->failedUpload(Lmobisocial/longdan/exception/LongdanException;)V

    goto :goto_29
.end method

.method successfulUpload(Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;)V
    .registers 3
    .param p1, "remote"    # Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;

    .prologue
    .line 267
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->mListener:Lmobisocial/omlib/client/interfaces/LongdanBlobUploadListener;

    if-eqz v0, :cond_9

    .line 268
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanBlobUploadProcessor$BlobUploadTask;->mListener:Lmobisocial/omlib/client/interfaces/LongdanBlobUploadListener;

    invoke-interface {v0, p1}, Lmobisocial/omlib/client/interfaces/LongdanBlobUploadListener;->onBlobUploadComplete(Lmobisocial/omlib/interfaces/BlobUploadListener$BlobUploadRecord;)V

    .line 269
    :cond_9
    return-void
.end method

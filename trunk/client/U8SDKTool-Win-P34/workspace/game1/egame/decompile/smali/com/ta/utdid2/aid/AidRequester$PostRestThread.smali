.class Lcom/ta/utdid2/aid/AidRequester$PostRestThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/aid/AidRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostRestThread"
.end annotation


# instance fields
.field mAppName:Ljava/lang/String;

.field mCallback:Lcom/ut/device/AidCallback;

.field mOldAid:Ljava/lang/String;

.field mPost:Lorg/apache/http/client/methods/HttpPost;

.field mRspLine:Ljava/lang/String;

.field mToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/ta/utdid2/aid/AidRequester;


# direct methods
.method public constructor <init>(Lcom/ta/utdid2/aid/AidRequester;Lorg/apache/http/client/methods/HttpPost;)V
    .registers 4

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->this$0:Lcom/ta/utdid2/aid/AidRequester;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mRspLine:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mToken:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mPost:Lorg/apache/http/client/methods/HttpPost;

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/ta/utdid2/aid/AidRequester;Lorg/apache/http/client/methods/HttpPost;Lcom/ut/device/AidCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->this$0:Lcom/ta/utdid2/aid/AidRequester;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mRspLine:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mToken:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mPost:Lorg/apache/http/client/methods/HttpPost;

    .line 82
    iput-object p3, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    .line 83
    iput-object p4, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mOldAid:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mAppName:Ljava/lang/String;

    .line 85
    iput-object p6, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mToken:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public getResponseLine()Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mRspLine:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x3ea

    .line 89
    iget-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    if-eqz v0, :cond_10

    .line 90
    iget-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    const/16 v2, 0x3e8

    iget-object v3, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mOldAid:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    .line 93
    :cond_10
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 96
    :try_start_15
    iget-object v2, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_8b

    move-result-object v0

    .line 106
    :goto_1b
    if-eqz v0, :cond_a5

    .line 107
    :try_start_1d
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_35} :catch_af

    move-object v1, v2

    .line 119
    :goto_36
    if-eqz v1, :cond_c8

    .line 122
    :goto_38
    :try_start_38
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 123
    sget-boolean v2, Lcom/ta/utdid2/android/utils/DebugUtils;->DBG:Z

    if-eqz v2, :cond_49

    .line 124
    # getter for: Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_49
    iput-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mRspLine:Ljava/lang/String;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4b} :catch_4c

    goto :goto_38

    .line 131
    :catch_4c
    move-exception v0

    .line 132
    iget-object v2, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    if-eqz v2, :cond_58

    .line 133
    iget-object v2, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    iget-object v3, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mOldAid:Ljava/lang/String;

    invoke-interface {v2, v5, v3}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    .line 135
    :cond_58
    # getter for: Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_63
    :goto_63
    if-eqz v1, :cond_75

    .line 140
    :try_start_65
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 141
    sget-boolean v0, Lcom/ta/utdid2/android/utils/DebugUtils;->DBG:Z

    if-eqz v0, :cond_75

    .line 142
    # getter for: Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "close the bufferreader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_75} :catch_d2

    .line 150
    :cond_75
    :goto_75
    iget-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    if-nez v0, :cond_e2

    .line 151
    iget-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->this$0:Lcom/ta/utdid2/aid/AidRequester;

    # getter for: Lcom/ta/utdid2/aid/AidRequester;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/ta/utdid2/aid/AidRequester;->access$100(Lcom/ta/utdid2/aid/AidRequester;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 152
    :try_start_80
    iget-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->this$0:Lcom/ta/utdid2/aid/AidRequester;

    # getter for: Lcom/ta/utdid2/aid/AidRequester;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/ta/utdid2/aid/AidRequester;->access$100(Lcom/ta/utdid2/aid/AidRequester;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 153
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_80 .. :try_end_8a} :catchall_df

    .line 160
    :goto_8a
    return-void

    .line 97
    :catch_8b
    move-exception v0

    .line 98
    iget-object v2, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    if-eqz v2, :cond_97

    .line 99
    iget-object v2, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    iget-object v3, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mOldAid:Ljava/lang/String;

    invoke-interface {v2, v5, v3}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    .line 101
    :cond_97
    # getter for: Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_1b

    .line 110
    :cond_a5
    :try_start_a5
    # getter for: Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "response is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_ae} :catch_af

    goto :goto_36

    .line 112
    :catch_af
    move-exception v0

    .line 113
    iget-object v2, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    if-eqz v2, :cond_bb

    .line 114
    iget-object v2, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    iget-object v3, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mOldAid:Ljava/lang/String;

    invoke-interface {v2, v5, v3}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    .line 116
    :cond_bb
    # getter for: Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36

    .line 129
    :cond_c8
    :try_start_c8
    # getter for: Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BufferredReader is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_d1} :catch_4c

    goto :goto_63

    .line 144
    :catch_d2
    move-exception v0

    .line 145
    # getter for: Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ta/utdid2/aid/AidRequester;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 153
    :catchall_df
    move-exception v0

    monitor-exit v1

    throw v0

    .line 156
    :cond_e2
    iget-object v0, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mRspLine:Ljava/lang/String;

    iget-object v1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mOldAid:Ljava/lang/String;

    # invokes: Lcom/ta/utdid2/aid/AidRequester;->getAidFromJsonRsp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/ta/utdid2/aid/AidRequester;->access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mCallback:Lcom/ut/device/AidCallback;

    const/16 v2, 0x3e9

    invoke-interface {v1, v2, v0}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->this$0:Lcom/ta/utdid2/aid/AidRequester;

    # getter for: Lcom/ta/utdid2/aid/AidRequester;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ta/utdid2/aid/AidRequester;->access$300(Lcom/ta/utdid2/aid/AidRequester;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mAppName:Ljava/lang/String;

    iget-object v3, p0, Lcom/ta/utdid2/aid/AidRequester$PostRestThread;->mToken:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/ta/utdid2/aid/AidStorageController;->setAidValueToSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8a
.end method

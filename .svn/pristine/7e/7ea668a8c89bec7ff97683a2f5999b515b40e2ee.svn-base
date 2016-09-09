.class public Lcom/vivo/upgrade/net/NetConnectTask;
.super Landroid/os/AsyncTask;
.source "NetConnectTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/upgrade/net/NetConnectTask$NetDataParseListener;,
        Lcom/vivo/upgrade/net/NetConnectTask$NetResponseListener;,
        Lcom/vivo/upgrade/net/NetConnectTask$Response;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Upgrade.NetConnectTask"


# instance fields
.field private mAppendInfo:Lcom/vivo/upgrade/net/NetConnectClient$AppendInfo;

.field private mConnect:Lcom/vivo/upgrade/net/NetConnectClient;

.field private mConnectStatus:I

.field private mConnectType:I

.field public mContext:Landroid/content/Context;

.field private mData:Ljava/lang/String;

.field private mHttpCode:I

.field private mIsFinish:Z

.field private mListener:Lcom/vivo/upgrade/net/NetConnectTask$NetResponseListener;

.field private mParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParseListener:Lcom/vivo/upgrade/net/NetConnectTask$NetDataParseListener;

.field private mParsedObj:Ljava/lang/Object;

.field private mParser:Lcom/vivo/upgrade/net/ParserFactory;

.field private mTimeOut:I

.field private mTryNum:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vivo/upgrade/net/NetConnectTask$NetDataParseListener;Lcom/vivo/upgrade/net/ParserFactory;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/vivo/upgrade/net/NetConnectTask$NetDataParseListener;
    .param p3, "parser"    # Lcom/vivo/upgrade/net/ParserFactory;
    .param p4, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/vivo/upgrade/net/NetConnectTask$NetDataParseListener;",
            "Lcom/vivo/upgrade/net/ParserFactory;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mParsedObj:Ljava/lang/Object;

    .line 72
    iput-boolean v1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mIsFinish:Z

    .line 77
    iput v1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mTimeOut:I

    .line 114
    if-nez p2, :cond_15

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NetDataParseListener can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_15
    if-nez p3, :cond_1f

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mParser can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1f
    iput-object p3, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mParser:Lcom/vivo/upgrade/net/ParserFactory;

    .line 123
    iput-object p2, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mParseListener:Lcom/vivo/upgrade/net/NetConnectTask$NetDataParseListener;

    .line 124
    iput-object p1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mContext:Landroid/content/Context;

    .line 125
    iput-object p4, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mUrl:Ljava/lang/String;

    .line 126
    iput-object p5, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mParams:Ljava/util/HashMap;

    .line 127
    iput v1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mConnectType:I

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/vivo/upgrade/net/NetConnectTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "connectType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mParsedObj:Ljava/lang/Object;

    .line 72
    iput-boolean v1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mIsFinish:Z

    .line 77
    iput v1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mTimeOut:I

    .line 97
    iput-object p1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mUrl:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mParams:Ljava/util/HashMap;

    .line 100
    iput p4, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mConnectType:I

    .line 101
    return-void
.end method

.method static synthetic access$2(Lcom/vivo/upgrade/net/NetConnectTask;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mData:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/vivo/upgrade/net/NetConnectTask;I)V
    .registers 2

    .prologue
    .line 43
    iput p1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mConnectStatus:I

    return-void
.end method

.method static synthetic access$4(Lcom/vivo/upgrade/net/NetConnectTask;I)V
    .registers 2

    .prologue
    .line 48
    iput p1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mHttpCode:I

    return-void
.end method

.method static synthetic access$5(Lcom/vivo/upgrade/net/NetConnectTask;)Lcom/vivo/upgrade/net/ParserFactory;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mParser:Lcom/vivo/upgrade/net/ParserFactory;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vivo/upgrade/net/NetConnectTask;Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mParsedObj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public connect()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 270
    iget v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mTimeOut:I

    if-lez v0, :cond_53

    .line 271
    new-instance v0, Lcom/vivo/upgrade/net/NetConnectClient;

    iget-object v1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/vivo/upgrade/net/NetConnectTask$Response;

    invoke-direct {v2, p0, v3}, Lcom/vivo/upgrade/net/NetConnectTask$Response;-><init>(Lcom/vivo/upgrade/net/NetConnectTask;Lcom/vivo/upgrade/net/NetConnectTask$Response;)V

    iget v3, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mTimeOut:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/upgrade/net/NetConnectClient;-><init>(Landroid/content/Context;Lcom/vivo/upgrade/net/NetConnectResponse;I)V

    iput-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mConnect:Lcom/vivo/upgrade/net/NetConnectClient;

    .line 276
    :goto_16
    iget v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mTryNum:I

    if-lez v0, :cond_21

    .line 277
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mConnect:Lcom/vivo/upgrade/net/NetConnectClient;

    iget v1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mTryNum:I

    invoke-virtual {v0, v1}, Lcom/vivo/upgrade/net/NetConnectClient;->setTryNum(I)V

    .line 280
    :cond_21
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mConnect:Lcom/vivo/upgrade/net/NetConnectClient;

    iget-object v1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mAppendInfo:Lcom/vivo/upgrade/net/NetConnectClient$AppendInfo;

    invoke-virtual {v0, v1}, Lcom/vivo/upgrade/net/NetConnectClient;->setAppendInfo(Lcom/vivo/upgrade/net/NetConnectClient$AppendInfo;)V

    .line 281
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mConnect:Lcom/vivo/upgrade/net/NetConnectClient;

    iget-object v1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mParams:Ljava/util/HashMap;

    iget v3, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mConnectType:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/upgrade/net/NetConnectClient;->connect(Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 283
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mListener:Lcom/vivo/upgrade/net/NetConnectTask$NetResponseListener;

    if-eqz v0, :cond_40

    .line 284
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mListener:Lcom/vivo/upgrade/net/NetConnectTask$NetResponseListener;

    iget-object v1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mData:Ljava/lang/String;

    iget v2, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mConnectStatus:I

    invoke-interface {v0, v4, v1, v2}, Lcom/vivo/upgrade/net/NetConnectTask$NetResponseListener;->onResponse(ZLjava/lang/String;I)V

    .line 287
    :cond_40
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mParseListener:Lcom/vivo/upgrade/net/NetConnectTask$NetDataParseListener;

    if-eqz v0, :cond_4f

    .line 288
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mParseListener:Lcom/vivo/upgrade/net/NetConnectTask$NetDataParseListener;

    iget-object v1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mData:Ljava/lang/String;

    iget v2, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mConnectStatus:I

    iget-object v3, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mParsedObj:Ljava/lang/Object;

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/vivo/upgrade/net/NetConnectTask$NetDataParseListener;->onParse(ZLjava/lang/String;ILjava/lang/Object;)V

    .line 291
    :cond_4f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mIsFinish:Z

    .line 292
    return-void

    .line 273
    :cond_53
    new-instance v0, Lcom/vivo/upgrade/net/NetConnectClient;

    iget-object v1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/vivo/upgrade/net/NetConnectTask$Response;

    invoke-direct {v2, p0, v3}, Lcom/vivo/upgrade/net/NetConnectTask$Response;-><init>(Lcom/vivo/upgrade/net/NetConnectTask;Lcom/vivo/upgrade/net/NetConnectTask$Response;)V

    invoke-direct {v0, v1, v2}, Lcom/vivo/upgrade/net/NetConnectClient;-><init>(Landroid/content/Context;Lcom/vivo/upgrade/net/NetConnectResponse;)V

    iput-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mConnect:Lcom/vivo/upgrade/net/NetConnectClient;

    goto :goto_16
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "isCancel":Z
    invoke-virtual {p0}, Lcom/vivo/upgrade/net/NetConnectTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 201
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 221
    :goto_d
    return-object v1

    .line 204
    :cond_e
    iget v1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mTimeOut:I

    if-lez v1, :cond_4a

    .line 205
    new-instance v1, Lcom/vivo/upgrade/net/NetConnectClient;

    iget-object v2, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/vivo/upgrade/net/NetConnectTask$Response;

    invoke-direct {v3, p0, v4}, Lcom/vivo/upgrade/net/NetConnectTask$Response;-><init>(Lcom/vivo/upgrade/net/NetConnectTask;Lcom/vivo/upgrade/net/NetConnectTask$Response;)V

    iget v4, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mTimeOut:I

    invoke-direct {v1, v2, v3, v4}, Lcom/vivo/upgrade/net/NetConnectClient;-><init>(Landroid/content/Context;Lcom/vivo/upgrade/net/NetConnectResponse;I)V

    iput-object v1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mConnect:Lcom/vivo/upgrade/net/NetConnectClient;

    .line 210
    :goto_22
    iget v1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mTryNum:I

    if-lez v1, :cond_2d

    .line 211
    iget-object v1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mConnect:Lcom/vivo/upgrade/net/NetConnectClient;

    iget v2, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mTryNum:I

    invoke-virtual {v1, v2}, Lcom/vivo/upgrade/net/NetConnectClient;->setTryNum(I)V

    .line 214
    :cond_2d
    iget-object v1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mConnect:Lcom/vivo/upgrade/net/NetConnectClient;

    iget-object v2, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mAppendInfo:Lcom/vivo/upgrade/net/NetConnectClient$AppendInfo;

    invoke-virtual {v1, v2}, Lcom/vivo/upgrade/net/NetConnectClient;->setAppendInfo(Lcom/vivo/upgrade/net/NetConnectClient$AppendInfo;)V

    .line 215
    iget-object v1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mConnect:Lcom/vivo/upgrade/net/NetConnectClient;

    iget-object v2, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mParams:Ljava/util/HashMap;

    iget v4, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mConnectType:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/vivo/upgrade/net/NetConnectClient;->connect(Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 217
    invoke-virtual {p0}, Lcom/vivo/upgrade/net/NetConnectTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 218
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_d

    .line 207
    :cond_4a
    new-instance v1, Lcom/vivo/upgrade/net/NetConnectClient;

    iget-object v2, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/vivo/upgrade/net/NetConnectTask$Response;

    invoke-direct {v3, p0, v4}, Lcom/vivo/upgrade/net/NetConnectTask$Response;-><init>(Lcom/vivo/upgrade/net/NetConnectTask;Lcom/vivo/upgrade/net/NetConnectTask$Response;)V

    invoke-direct {v1, v2, v3}, Lcom/vivo/upgrade/net/NetConnectClient;-><init>(Landroid/content/Context;Lcom/vivo/upgrade/net/NetConnectResponse;)V

    iput-object v1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mConnect:Lcom/vivo/upgrade/net/NetConnectClient;

    goto :goto_22

    .line 221
    :cond_59
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_d
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vivo/upgrade/net/NetConnectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getConnectStatus()I
    .registers 2

    .prologue
    .line 303
    iget v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mConnectStatus:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpCode()I
    .registers 2

    .prologue
    .line 307
    iget v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mHttpCode:I

    return v0
.end method

.method public getParsedObj()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mParsedObj:Ljava/lang/Object;

    return-object v0
.end method

.method public isTaskFinish()Z
    .registers 2

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mIsFinish:Z

    return v0
.end method

.method public onCancelled()V
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mConnect:Lcom/vivo/upgrade/net/NetConnectClient;

    if-eqz v0, :cond_9

    .line 178
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mConnect:Lcom/vivo/upgrade/net/NetConnectClient;

    invoke-virtual {v0}, Lcom/vivo/upgrade/net/NetConnectClient;->disconnect()V

    .line 180
    :cond_9
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mListener:Lcom/vivo/upgrade/net/NetConnectTask$NetResponseListener;

    if-eqz v0, :cond_11

    .line 186
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mListener:Lcom/vivo/upgrade/net/NetConnectTask$NetResponseListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mData:Ljava/lang/String;

    iget v3, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mConnectStatus:I

    invoke-interface {v0, v1, v2, v3}, Lcom/vivo/upgrade/net/NetConnectTask$NetResponseListener;->onResponse(ZLjava/lang/String;I)V

    .line 189
    :cond_11
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mParseListener:Lcom/vivo/upgrade/net/NetConnectTask$NetDataParseListener;

    if-eqz v0, :cond_24

    .line 190
    iget-object v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mParseListener:Lcom/vivo/upgrade/net/NetConnectTask$NetDataParseListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mData:Ljava/lang/String;

    iget v3, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mConnectStatus:I

    iget-object v4, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mParsedObj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/upgrade/net/NetConnectTask$NetDataParseListener;->onParse(ZLjava/lang/String;ILjava/lang/Object;)V

    .line 193
    :cond_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mIsFinish:Z

    .line 194
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/vivo/upgrade/net/NetConnectTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setAppendInfo(Lcom/vivo/upgrade/net/NetConnectClient$AppendInfo;)V
    .registers 2
    .param p1, "appendInfo"    # Lcom/vivo/upgrade/net/NetConnectClient$AppendInfo;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mAppendInfo:Lcom/vivo/upgrade/net/NetConnectClient$AppendInfo;

    .line 156
    return-void
.end method

.method public setConnectTimes(I)V
    .registers 2
    .param p1, "times"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mTryNum:I

    .line 164
    return-void
.end method

.method public setConnectType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mConnectType:I

    .line 144
    return-void
.end method

.method public setJsonParser(Lcom/vivo/upgrade/net/ParserFactory;)V
    .registers 2
    .param p1, "parser"    # Lcom/vivo/upgrade/net/ParserFactory;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mParser:Lcom/vivo/upgrade/net/ParserFactory;

    .line 152
    return-void
.end method

.method public setNetDataParseListener(Lcom/vivo/upgrade/net/NetConnectTask$NetDataParseListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/vivo/upgrade/net/NetConnectTask$NetDataParseListener;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mParseListener:Lcom/vivo/upgrade/net/NetConnectTask$NetDataParseListener;

    .line 136
    return-void
.end method

.method public setNetResponseListener(Lcom/vivo/upgrade/net/NetConnectTask$NetResponseListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/vivo/upgrade/net/NetConnectTask$NetResponseListener;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mListener:Lcom/vivo/upgrade/net/NetConnectTask$NetResponseListener;

    .line 132
    return-void
.end method

.method public setTimeout(I)V
    .registers 2
    .param p1, "timeout"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/vivo/upgrade/net/NetConnectTask;->mTimeOut:I

    .line 172
    return-void
.end method

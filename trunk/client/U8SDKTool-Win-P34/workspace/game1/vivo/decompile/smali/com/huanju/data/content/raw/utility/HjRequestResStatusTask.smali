.class public Lcom/huanju/data/content/raw/utility/HjRequestResStatusTask;
.super Lcom/huanju/data/net/AbstractNetTask;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/huanju/data/net/AbstractNetTask$ReqType;->Get:Lcom/huanju/data/net/AbstractNetTask$ReqType;

    invoke-direct {p0, p1, v0}, Lcom/huanju/data/net/AbstractNetTask;-><init>(Landroid/content/Context;Lcom/huanju/data/net/AbstractNetTask$ReqType;)V

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/content/raw/utility/HjRequestResStatusTask;->mPkgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getEntity()Lorg/apache/http/HttpEntity;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLaunchMode()Lcom/huanju/data/net/AbstractNetTask$LaunchMode;
    .registers 2

    sget-object v0, Lcom/huanju/data/net/AbstractNetTask$LaunchMode;->addnew:Lcom/huanju/data/net/AbstractNetTask$LaunchMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "HjRequestResStatusTask"

    return-object v0
.end method

.method protected getURL()Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/huanju/data/a/f;->l:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/huanju/data/content/raw/utility/HjRequestResStatusTask;->mPkgName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/huanju/data/content/raw/utility/HjRequestResStatusTask;->getAppID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "20002a"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onAddHeaders(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .registers 2

    return-void
.end method

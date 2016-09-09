.class public Lcom/vivo/sdkplugin/model/MFeedImageInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/model/MFeedImageInfo;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/model/MFeedImageInfo;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/model/MFeedImageInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/model/MFeedImageInfo;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/model/MFeedImageInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/model/MFeedImageInfo;->b:Landroid/net/Uri;

    return-void
.end method

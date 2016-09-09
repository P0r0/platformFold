.class public Lcom/baidu/paysdk/datamodel/LightAppShareModel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/NoProguard;


# instance fields
.field public appid:I

.field public content:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public linkUrl:Ljava/lang/String;

.field public mediaType:Ljava/lang/String;

.field public menumode:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/baidu/paysdk/datamodel/LightAppShareModel;-><init>()V

    iput-object p1, p0, Lcom/baidu/paysdk/datamodel/LightAppShareModel;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/paysdk/datamodel/LightAppShareModel;->content:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/paysdk/datamodel/LightAppShareModel;->linkUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/paysdk/datamodel/LightAppShareModel;->imageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toMap()Ljava/util/Map;
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/LightAppShareModel;->mediaType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "key_share_mediatype"

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/LightAppShareModel;->mediaType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/LightAppShareModel;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "key_share_title"

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/LightAppShareModel;->title:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/LightAppShareModel;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "key_share_content"

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/LightAppShareModel;->content:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/LightAppShareModel;->linkUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    const-string v1, "key_share_link"

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/LightAppShareModel;->linkUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    iget-object v1, p0, Lcom/baidu/paysdk/datamodel/LightAppShareModel;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_50

    const-string v1, "key_share_icon"

    iget-object v2, p0, Lcom/baidu/paysdk/datamodel/LightAppShareModel;->imageUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    return-object v0
.end method

.method public valid()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/datamodel/LightAppShareModel;->linkUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

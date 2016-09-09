.class Lcom/baidu/sapi2/SapiWebView$ConfigFastloginFeaturesInterpreter;
.super Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;
.source "SapiWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/SapiWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConfigFastloginFeaturesInterpreter"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;)V
    .registers 2

    .prologue
    .line 1611
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$ConfigFastloginFeaturesInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    return-void
.end method


# virtual methods
.method public interpret(Lcom/baidu/sapi2/SapiWebView$Command;)Ljava/lang/String;
    .registers 8
    .param p1, "command"    # Lcom/baidu/sapi2/SapiWebView$Command;

    .prologue
    .line 1626
    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView$ConfigFastloginFeaturesInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v4}, Lcom/baidu/sapi2/SapiWebView;->d(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v4

    iget-object v2, v4, Lcom/baidu/sapi2/SapiConfiguration;->fastLoginFeatureList:Ljava/util/List;

    .line 1627
    .local v2, "fastLoginFeatureList":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/utils/enums/FastLoginFeature;>;"
    if-nez v2, :cond_c

    .line 1628
    const/4 v4, 0x0

    .line 1647
    :goto_b
    return-object v4

    .line 1630
    :cond_c
    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView$ConfigFastloginFeaturesInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v4}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/b;->b()Z

    move-result v4

    if-nez v4, :cond_29

    sget-object v4, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->DEVICE_LOGIN:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1632
    sget-object v4, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->DEVICE_LOGIN:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1634
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1636
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView$ConfigFastloginFeaturesInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v4}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/b;->c()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1637
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    .line 1639
    :cond_43
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_44
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6a

    .line 1640
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    .line 1641
    .local v1, "f":Lcom/baidu/sapi2/utils/enums/FastLoginFeature;
    if-nez v3, :cond_5c

    .line 1642
    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->getStrValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    :goto_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 1644
    :cond_5c
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->getStrValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_59

    .line 1647
    .end local v1    # "f":Lcom/baidu/sapi2/utils/enums/FastLoginFeature;
    :cond_6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_b
.end method

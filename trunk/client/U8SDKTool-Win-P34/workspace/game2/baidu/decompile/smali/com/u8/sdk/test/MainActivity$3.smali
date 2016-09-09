.class Lcom/u8/sdk/test/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/test/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/test/MainActivity;


# direct methods
.method constructor <init>(Lcom/u8/sdk/test/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/test/MainActivity$3;->this$0:Lcom/u8/sdk/test/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/u8/sdk/ShareParams;

    invoke-direct {v0}, Lcom/u8/sdk/ShareParams;-><init>()V

    const-string v1, "U8SDK\u771f\u7684\u5f88\u597d\u7528\u54e6"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/ShareParams;->setTitle(Ljava/lang/String;)V

    const-string v1, "U8SDK\u662f\u4e00\u5957Android\u7edf\u4e00SDK\u63a5\u5165\u6846\u67b6\uff0c\u5df2\u7ecf\u63a5\u516530\u591a\u5bb6\u4e3b\u6d41\u6e20\u9053\u3002\u540c\u65f6\uff0c\u63a5\u5165\u4e86\u5206\u4eabSDK\uff0c\u53cb\u76df\u63a8\u9001SDK\u7b49"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/ShareParams;->setContent(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/u8/sdk/ShareParams;->setDialogMode(Z)V

    const-string v1, "U8SDK"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/ShareParams;->setSourceName(Ljava/lang/String;)V

    const-string v1, "http://www.uustory.com/"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/ShareParams;->setSourceUrl(Ljava/lang/String;)V

    const-string v1, "http://www.uustory.com"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/ShareParams;->setTitleUrl(Ljava/lang/String;)V

    const-string v1, "http://www.uustory.com"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/ShareParams;->setUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/u8/sdk/plugin/U8Share;->getInstance()Lcom/u8/sdk/plugin/U8Share;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/u8/sdk/plugin/U8Share;->share(Lcom/u8/sdk/ShareParams;)V

    return-void
.end method

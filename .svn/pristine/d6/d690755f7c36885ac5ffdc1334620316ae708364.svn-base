.class Lcom/u8/sdk/JinLiSDK$1;
.super Ljava/lang/Object;
.source "JinLiSDK.java"

# interfaces
.implements Lcom/gionee/game/offlinesdk/InitPluginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/JinLiSDK;->initSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/JinLiSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/JinLiSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/JinLiSDK$1;->this$0:Lcom/u8/sdk/JinLiSDK;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(I)V
    .registers 5
    .param p1, "event"    # I

    .prologue
    .line 38
    if-nez p1, :cond_d

    .line 40
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "\u63d2\u4ef6\u521d\u59cb\u5316\u6210\u529f"

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 44
    :goto_c
    return-void

    .line 42
    :cond_d
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "\u63d2\u4ef6\u521d\u59cb\u5316\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_c
.end method

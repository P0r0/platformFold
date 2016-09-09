.class Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$6$1;
.super Ljava/lang/Object;
.source "GamePlatformImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$6;


# direct methods
.method constructor <init>(Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$6;)V
    .registers 2

    .prologue
    .line 134
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$6$1;->this$1:Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$6$1;->this$1:Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$6;

    iget-object v0, v0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$6;->val$callback:Lcom/gionee/game/offlinesdk/PayCallback;

    const-string v1, "6001"

    const-string v2, "6001"

    invoke-static {v2}, Lcom/gionee/game/offlinesdk/ErrorCode;->getErrorDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/gionee/game/offlinesdk/PayCallback;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

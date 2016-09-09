.class Lcom/gionee/game/offlinesdk/common/GamePayer$3;
.super Ljava/lang/Object;
.source "GamePayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/game/offlinesdk/common/GamePayer;->dealResult(Lcom/gionee/game/offlinesdk/PayCallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/game/offlinesdk/common/GamePayer;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$payCallback:Lcom/gionee/game/offlinesdk/PayCallback;

.field final synthetic val$stateCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gionee/game/offlinesdk/common/GamePayer;Ljava/lang/String;Lcom/gionee/game/offlinesdk/PayCallback;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 112
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$3;->this$0:Lcom/gionee/game/offlinesdk/common/GamePayer;

    iput-object p2, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$3;->val$stateCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$3;->val$payCallback:Lcom/gionee/game/offlinesdk/PayCallback;

    iput-object p4, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$3;->val$description:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$3;->val$stateCode:Ljava/lang/String;

    const-string v1, "9000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 117
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$3;->val$payCallback:Lcom/gionee/game/offlinesdk/PayCallback;

    invoke-interface {v0}, Lcom/gionee/game/offlinesdk/PayCallback;->onSuccess()V

    .line 121
    :goto_f
    return-void

    .line 119
    :cond_10
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$3;->val$payCallback:Lcom/gionee/game/offlinesdk/PayCallback;

    iget-object v1, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$3;->val$stateCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$3;->val$description:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/gionee/game/offlinesdk/PayCallback;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.class Lcom/gionee/game/offlinesdk/common/GamePayer$2;
.super Lcom/gionee/gsp/AmigoPayer$MyPayCallback;
.source "GamePayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/game/offlinesdk/common/GamePayer;->payInner(Lcom/gionee/gsp/GnOrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/game/offlinesdk/common/GamePayer;

.field final synthetic val$payCallback:Lcom/gionee/game/offlinesdk/PayCallback;


# direct methods
.method constructor <init>(Lcom/gionee/game/offlinesdk/common/GamePayer;Lcom/gionee/gsp/AmigoPayer;Lcom/gionee/game/offlinesdk/PayCallback;)V
    .registers 4
    .param p2, "x0"    # Lcom/gionee/gsp/AmigoPayer;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$2;->this$0:Lcom/gionee/game/offlinesdk/common/GamePayer;

    iput-object p3, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$2;->val$payCallback:Lcom/gionee/game/offlinesdk/PayCallback;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcom/gionee/gsp/AmigoPayer$MyPayCallback;-><init>(Lcom/gionee/gsp/AmigoPayer;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$2;->this$0:Lcom/gionee/game/offlinesdk/common/GamePayer;

    iget-object v1, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$2;->val$payCallback:Lcom/gionee/game/offlinesdk/PayCallback;

    const-string v2, "7000"

    # invokes: Lcom/gionee/game/offlinesdk/common/GamePayer;->dealResult(Lcom/gionee/game/offlinesdk/PayCallback;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/gionee/game/offlinesdk/common/GamePayer;->access$100(Lcom/gionee/game/offlinesdk/common/GamePayer;Lcom/gionee/game/offlinesdk/PayCallback;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public payEnd(Ljava/lang/String;)V
    .registers 4
    .param p1, "stateCode"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/gionee/gsp/AmigoPayer$MyPayCallback;->payEnd(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$2;->this$0:Lcom/gionee/game/offlinesdk/common/GamePayer;

    iget-object v1, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$2;->val$payCallback:Lcom/gionee/game/offlinesdk/PayCallback;

    # invokes: Lcom/gionee/game/offlinesdk/common/GamePayer;->dealResult(Lcom/gionee/game/offlinesdk/PayCallback;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/gionee/game/offlinesdk/common/GamePayer;->access$100(Lcom/gionee/game/offlinesdk/common/GamePayer;Lcom/gionee/game/offlinesdk/PayCallback;Ljava/lang/String;)V

    .line 90
    return-void
.end method

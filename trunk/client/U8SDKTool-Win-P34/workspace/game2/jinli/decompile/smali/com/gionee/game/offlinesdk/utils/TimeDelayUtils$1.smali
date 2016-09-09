.class final Lcom/gionee/game/offlinesdk/utils/TimeDelayUtils$1;
.super Ljava/lang/Object;
.source "TimeDelayUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/game/offlinesdk/utils/TimeDelayUtils;->start(JJLcom/gionee/game/offlinesdk/utils/TimeDelayUtils$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/gionee/game/offlinesdk/utils/TimeDelayUtils$Callback;


# direct methods
.method constructor <init>(Lcom/gionee/game/offlinesdk/utils/TimeDelayUtils$Callback;)V
    .registers 2

    .prologue
    .line 15
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/utils/TimeDelayUtils$1;->val$callback:Lcom/gionee/game/offlinesdk/utils/TimeDelayUtils$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/utils/TimeDelayUtils$1;->val$callback:Lcom/gionee/game/offlinesdk/utils/TimeDelayUtils$Callback;

    invoke-interface {v0}, Lcom/gionee/game/offlinesdk/utils/TimeDelayUtils$Callback;->onTimeOut()V

    .line 19
    return-void
.end method

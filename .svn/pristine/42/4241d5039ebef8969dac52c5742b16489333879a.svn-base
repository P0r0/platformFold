.class Lcom/duoku/platform/d/b$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/d/b$a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/d/b$a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/d/b$a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/d/b$a$2;->a:Lcom/duoku/platform/d/b$a;

    .line 5756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 5762
    invoke-static {}, Lcom/duoku/platform/download/work/FutureTaskManager;->getInstance()Lcom/duoku/platform/download/work/FutureTaskManager;

    move-result-object v0

    .line 5763
    sget-boolean v1, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v1, :cond_f

    .line 5764
    const-string v1, "wangliangtest"

    const-string v2, "[AppDaoImpl#afterDbCreated]requestDownloadedGames"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5765
    :cond_f
    invoke-virtual {v0}, Lcom/duoku/platform/download/work/FutureTaskManager;->requestDownloadedGames()V

    .line 5766
    return-void
.end method

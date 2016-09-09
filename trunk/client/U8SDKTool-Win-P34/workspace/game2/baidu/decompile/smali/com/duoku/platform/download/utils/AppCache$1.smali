.class Lcom/duoku/platform/download/utils/AppCache$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/AppCache;->notifyAppsChanged(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/utils/AppCache;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/utils/AppCache;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/AppCache$1;->a:Lcom/duoku/platform/download/utils/AppCache;

    iput-object p2, p0, Lcom/duoku/platform/download/utils/AppCache$1;->b:Landroid/content/Context;

    .line 189
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 193
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache$1;->a:Lcom/duoku/platform/download/utils/AppCache;

    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppCache$1;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/utils/AppCache;->getPopNumber(Landroid/content/Context;)I

    move-result v0

    .line 194
    sget-boolean v1, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v1, :cond_20

    .line 195
    const-string v1, "PopNumber"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[AppCache#notifyAppsChanged] popNumber:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_20
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppCache$1;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/duoku/platform/download/utils/BroadcaseSender;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/BroadcaseSender;

    move-result-object v1

    .line 199
    invoke-virtual {v1, v0}, Lcom/duoku/platform/download/utils/BroadcaseSender;->notifyManagerAppsChanged(I)V

    .line 200
    return-void
.end method

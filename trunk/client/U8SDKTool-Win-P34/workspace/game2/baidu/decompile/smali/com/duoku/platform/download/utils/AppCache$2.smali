.class Lcom/duoku/platform/download/utils/AppCache$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/AppCache;->onCreate()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/utils/AppCache;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/utils/AppCache;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/AppCache$2;->a:Lcom/duoku/platform/download/utils/AppCache;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 367
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppCache$2;->a:Lcom/duoku/platform/download/utils/AppCache;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/download/utils/AppCache;->refreshInstall(Landroid/content/Context;)V

    .line 370
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppCache$2;->a:Lcom/duoku/platform/download/utils/AppCache;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/download/utils/AppCache;->refreshDownload(Landroid/content/Context;)V

    .line 371
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppCache$2;->a:Lcom/duoku/platform/download/utils/AppCache;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/download/utils/AppCache;->refreshUpdatable(Landroid/content/Context;)V

    .line 372
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache$2;->a:Lcom/duoku/platform/download/utils/AppCache;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duoku/platform/download/utils/AppCache;->access$1(Lcom/duoku/platform/download/utils/AppCache;Z)V

    .line 373
    return-void
.end method

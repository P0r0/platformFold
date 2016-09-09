.class Lcom/duoku/platform/ui/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/ui/b;->g(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/b;

.field private final synthetic b:Lcom/duoku/platform/download/mode/DownloadAppInfo;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/b;Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/ui/b$4;->a:Lcom/duoku/platform/ui/b;

    iput-object p2, p0, Lcom/duoku/platform/ui/b$4;->b:Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 1154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/duoku/platform/ui/b$4;->b:Lcom/duoku/platform/download/mode/DownloadAppInfo;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/duoku/platform/download/utils/PackageHelper;->removeDownloadGames(J)V

    .line 1162
    return-void
.end method

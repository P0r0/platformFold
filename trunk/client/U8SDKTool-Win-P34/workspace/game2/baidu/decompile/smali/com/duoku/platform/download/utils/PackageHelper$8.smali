.class Lcom/duoku/platform/download/utils/PackageHelper$8;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/PackageHelper;->pauseDownloadGames(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/PackageHelper$8;->a:Ljava/lang/String;

    .line 1487
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageHelper$8;->a:Ljava/lang/String;

    # invokes: Lcom/duoku/platform/download/utils/PackageHelper;->doPause(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->access$7(Ljava/lang/String;)V

    .line 1493
    return-void
.end method

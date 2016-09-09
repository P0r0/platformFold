.class Lcom/duoku/platform/download/utils/ApkUtil$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/ApkUtil;->realInstallApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/ApkUtil$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/duoku/platform/download/utils/ApkUtil$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/duoku/platform/download/utils/ApkUtil$1;->c:Ljava/lang/String;

    .line 547
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 551
    invoke-static {}, Lcom/duoku/platform/download/utils/ApkUtil;->checkRooted1()Z

    move-result v0

    .line 552
    if-nez v0, :cond_10

    .line 555
    iget-object v0, p0, Lcom/duoku/platform/download/utils/ApkUtil$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/download/utils/ApkUtil$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/download/utils/ApkUtil$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/download/utils/ApkUtil;->installAPKBySUCommand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :goto_f
    return-void

    .line 559
    :cond_10
    iget-object v0, p0, Lcom/duoku/platform/download/utils/ApkUtil$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/download/utils/ApkUtil$1;->c:Ljava/lang/String;

    # invokes: Lcom/duoku/platform/download/utils/ApkUtil;->startSystemInstallUI(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/duoku/platform/download/utils/ApkUtil;->access$0(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_f
.end method

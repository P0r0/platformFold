.class Lcom/duoku/platform/download/utils/ApkUtil$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/ApkUtil;->requestRootPrivilege(Landroid/content/Context;Lcom/duoku/platform/download/utils/ApkUtil$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcom/duoku/platform/download/utils/ApkUtil$b;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/utils/ApkUtil$b;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/ApkUtil$2;->a:Lcom/duoku/platform/download/utils/ApkUtil$b;

    .line 657
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 662
    # invokes: Lcom/duoku/platform/download/utils/ApkUtil;->requestRoot()Z
    invoke-static {}, Lcom/duoku/platform/download/utils/ApkUtil;->access$1()Z

    move-result v0

    .line 663
    iget-object v1, p0, Lcom/duoku/platform/download/utils/ApkUtil$2;->a:Lcom/duoku/platform/download/utils/ApkUtil$b;

    if-eqz v1, :cond_d

    .line 665
    iget-object v1, p0, Lcom/duoku/platform/download/utils/ApkUtil$2;->a:Lcom/duoku/platform/download/utils/ApkUtil$b;

    invoke-interface {v1, v0}, Lcom/duoku/platform/download/utils/ApkUtil$b;->a(Z)V

    .line 667
    :cond_d
    return-void
.end method

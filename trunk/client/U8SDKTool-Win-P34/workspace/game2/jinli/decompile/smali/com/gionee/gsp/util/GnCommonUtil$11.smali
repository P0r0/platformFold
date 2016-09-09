.class Lcom/gionee/gsp/util/GnCommonUtil$11;
.super Ljava/lang/Thread;
.source "GnCommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/util/GnCommonUtil;->defaultInstall(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/util/GnCommonUtil$11;->val$filePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/gionee/gsp/util/GnCommonUtil$11;->val$context:Landroid/content/Context;

    .line 1857
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1859
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "---------------\u5f00\u59cb\u88c5\u5e94\u7528\u5305\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gionee/gsp/util/GnCommonUtil$11;->val$filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 1862
    const/4 v0, 0x0

    .line 1864
    .local v0, "result":Z
    if-eqz v0, :cond_18

    .line 1871
    :goto_17
    return-void

    .line 1867
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "---------------\u7b2c\u4e00\u6b21\u5b89\u88c5\u5931\u8d25\uff0c\u5c1d\u8bd5\u7b2c\u4e8c\u79cd\u65b9\u5f0f"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gionee/gsp/util/GnCommonUtil$11;->val$filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 1869
    iget-object v1, p0, Lcom/gionee/gsp/util/GnCommonUtil$11;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/gionee/gsp/util/GnCommonUtil$11;->val$filePath:Ljava/lang/String;

    # invokes: Lcom/gionee/gsp/util/GnCommonUtil;->installByPackageManager(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/gionee/gsp/util/GnCommonUtil;->access$1(Landroid/content/Context;Ljava/lang/String;)V

    .line 1870
    const-string v1, "---------------\u7ed3\u675f\u7b2c\u4e8c\u79cd\u65b9\u5f0f"

    invoke-static {v1}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    goto :goto_17
.end method

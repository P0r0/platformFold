.class Lcom/gionee/gsp/util/GnCommonUtil$7$2;
.super Ljava/lang/Object;
.source "GnCommonUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/util/GnCommonUtil$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gionee/gsp/util/GnCommonUtil$7;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

.field private final synthetic val$tempNeedToInstallList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/util/GnCommonUtil$7;Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/util/GnCommonUtil$7$2;->this$1:Lcom/gionee/gsp/util/GnCommonUtil$7;

    iput-object p2, p0, Lcom/gionee/gsp/util/GnCommonUtil$7$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/gionee/gsp/util/GnCommonUtil$7$2;->val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

    iput-object p4, p0, Lcom/gionee/gsp/util/GnCommonUtil$7$2;->val$tempNeedToInstallList:Ljava/util/List;

    .line 1641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/gionee/gsp/util/GnCommonUtil$7$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/gionee/gsp/util/GnCommonUtil$7$2;->val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

    iget-object v2, p0, Lcom/gionee/gsp/util/GnCommonUtil$7$2;->val$tempNeedToInstallList:Ljava/util/List;

    # invokes: Lcom/gionee/gsp/util/GnCommonUtil;->commonInstall(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V
    invoke-static {v0, v1, v2}, Lcom/gionee/gsp/util/GnCommonUtil;->access$0(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V

    .line 1646
    return-void
.end method

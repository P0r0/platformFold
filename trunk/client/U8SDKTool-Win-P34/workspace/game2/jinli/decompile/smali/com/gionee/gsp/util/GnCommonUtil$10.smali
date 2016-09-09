.class Lcom/gionee/gsp/util/GnCommonUtil$10;
.super Ljava/lang/Object;
.source "GnCommonUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/util/GnCommonUtil;->commonInstall(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/util/GnCommonUtil$10;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/gionee/gsp/util/GnCommonUtil$10;->val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

    .line 1764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1769
    :try_start_0
    iget-object v1, p0, Lcom/gionee/gsp/util/GnCommonUtil$10;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;->getInstance(Landroid/content/Context;)Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_f

    .line 1773
    :goto_9
    iget-object v1, p0, Lcom/gionee/gsp/util/GnCommonUtil$10;->val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

    invoke-virtual {v1}, Lcom/gionee/gsp/service/GnBaseInstallListener;->onReCheck()V

    .line 1774
    return-void

    .line 1770
    :catch_f
    move-exception v0

    .line 1771
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.class public Lcom/vivo/upgrade/UpgradeActivity;
.super Landroid/app/Activity;
.source "UpgradeActivity.java"


# static fields
.field public static density:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/vivo/upgrade/UpgradeActivity;->density:F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 22
    .local v0, "metric":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/vivo/upgrade/UpgradeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 23
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/vivo/upgrade/UpgradeActivity;->density:F

    .line 26
    invoke-static {}, Lcom/vivo/upgrade/CheckUpdateManager;->getInstance()Lcom/vivo/upgrade/CheckUpdateManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vivo/upgrade/UpgradeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/vivo/upgrade/UpgradeActivity$1;

    invoke-direct {v4, p0}, Lcom/vivo/upgrade/UpgradeActivity$1;-><init>(Lcom/vivo/upgrade/UpgradeActivity;)V

    invoke-virtual {v2, p0, v3, v4}, Lcom/vivo/upgrade/CheckUpdateManager;->init(Landroid/content/Context;Ljava/lang/String;Lcom/vivo/upgrade/CheckUpdateManager$ExitApp;)V

    .line 34
    invoke-static {}, Lcom/vivo/upgrade/CheckUpdateManager;->getInstance()Lcom/vivo/upgrade/CheckUpdateManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/vivo/upgrade/CheckUpdateManager;->checkUpdate(Landroid/content/Context;Z)V

    .line 37
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 38
    .local v1, "view":Landroid/widget/TextView;
    const-string v2, "check by user"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    new-instance v2, Lcom/vivo/upgrade/UpgradeActivity$2;

    invoke-direct {v2, p0}, Lcom/vivo/upgrade/UpgradeActivity$2;-><init>(Lcom/vivo/upgrade/UpgradeActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {p0, v1}, Lcom/vivo/upgrade/UpgradeActivity;->setContentView(Landroid/view/View;)V

    .line 49
    return-void
.end method

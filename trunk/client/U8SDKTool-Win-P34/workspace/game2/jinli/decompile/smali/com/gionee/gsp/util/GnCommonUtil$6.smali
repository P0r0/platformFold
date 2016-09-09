.class Lcom/gionee/gsp/util/GnCommonUtil$6;
.super Ljava/lang/Object;
.source "GnCommonUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/util/GnCommonUtil;->isUpdateAppConfig(Landroid/content/Context;Lcom/gionee/gsp/data/GnCheckUpdate;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1476
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1477
    return-void
.end method

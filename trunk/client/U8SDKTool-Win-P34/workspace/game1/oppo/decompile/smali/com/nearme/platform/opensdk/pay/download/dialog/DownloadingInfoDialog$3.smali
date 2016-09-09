.class Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$3;
.super Ljava/lang/Object;
.source "DownloadingInfoDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

.field private final synthetic val$rightBtnGD:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method constructor <init>(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;Landroid/graphics/drawable/GradientDrawable;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$3;->this$0:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog;

    iput-object p2, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$3;->val$rightBtnGD:Landroid/graphics/drawable/GradientDrawable;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    .line 168
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_10

    .line 169
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$3;->val$rightBtnGD:Landroid/graphics/drawable/GradientDrawable;

    const v1, -0xb5601a

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 173
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0

    .line 170
    :cond_10
    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 171
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadingInfoDialog$3;->val$rightBtnGD:Landroid/graphics/drawable/GradientDrawable;

    const v1, -0x9f4e0b

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_e
.end method

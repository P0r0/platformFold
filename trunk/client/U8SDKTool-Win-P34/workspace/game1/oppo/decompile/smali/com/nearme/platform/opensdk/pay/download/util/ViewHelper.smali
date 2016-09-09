.class public Lcom/nearme/platform/opensdk/pay/download/util/ViewHelper;
.super Ljava/lang/Object;
.source "ViewHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setBackgroud(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 23
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 31
    :cond_4
    :goto_4
    return-void

    .line 26
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_f

    .line 27
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 29
    :cond_f
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4
.end method

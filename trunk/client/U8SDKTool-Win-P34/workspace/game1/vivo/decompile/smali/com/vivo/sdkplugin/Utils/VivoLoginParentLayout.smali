.class public Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout;
.super Landroid/widget/RelativeLayout;


# static fields
.field public static final TAG:Ljava/lang/String; = "VivoLoginParentLayout"


# instance fields
.field private a:Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout$onSizeChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 7

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout;->a:Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout$onSizeChangeListener;

    if-eqz v0, :cond_10

    if-le p2, p4, :cond_14

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout;->a:Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout$onSizeChangeListener;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout$onSizeChangeListener;->onSoftInputChange(Ljava/lang/Boolean;)V

    :cond_10
    :goto_10
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    return-void

    :cond_14
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout;->a:Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout$onSizeChangeListener;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout$onSizeChangeListener;->onSoftInputChange(Ljava/lang/Boolean;)V

    goto :goto_10
.end method

.method public setOnSizeChangeListener(Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout$onSizeChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout;->a:Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout$onSizeChangeListener;

    return-void
.end method

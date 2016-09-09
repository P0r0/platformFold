.class public Lcom/vivo/sdkplugin/Utils/VivoWebView;
.super Landroid/webkit/WebView;


# instance fields
.field private a:Lcom/vivo/sdkplugin/Utils/VivoWebView$ScrollInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoWebView;->a:Lcom/vivo/sdkplugin/Utils/VivoWebView$ScrollInterface;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoWebView;->a:Lcom/vivo/sdkplugin/Utils/VivoWebView$ScrollInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/vivo/sdkplugin/Utils/VivoWebView$ScrollInterface;->onSChanged(IIII)V

    :cond_c
    return-void
.end method

.method public setOnCustomScroolChangeListener(Lcom/vivo/sdkplugin/Utils/VivoWebView$ScrollInterface;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/VivoWebView;->a:Lcom/vivo/sdkplugin/Utils/VivoWebView$ScrollInterface;

    return-void
.end method

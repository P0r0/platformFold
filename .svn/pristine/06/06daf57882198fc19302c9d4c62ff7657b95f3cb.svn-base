.class final Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$2;
.super Ljava/lang/Object;
.source "BitmapLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->uiSetBitmap(Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;Landroid/widget/ImageView;Landroid/content/Context;Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bitmapStyle:Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$imageSet:Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;Landroid/content/Context;Landroid/widget/ImageView;Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;)V
    .registers 5

    .prologue
    .line 210
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$2;->val$imageSet:Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$2;->val$view:Landroid/widget/ImageView;

    iput-object p4, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$2;->val$bitmapStyle:Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 215
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$2;->val$imageSet:Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$2;->val$context:Landroid/content/Context;

    # invokes: Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->createRequestWithFile(Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;Landroid/content/Context;)Lcom/squareup/picasso/RequestCreator;
    invoke-static {v0, v1}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->access$100(Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;Landroid/content/Context;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$2;->val$view:Landroid/widget/ImageView;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$2;->val$bitmapStyle:Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$2;->val$context:Landroid/content/Context;

    # invokes: Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->uiPicassoSet(Lcom/squareup/picasso/RequestCreator;Landroid/widget/ImageView;Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;Landroid/content/Context;)V
    invoke-static {v0, v1, v2, v3}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->access$200(Lcom/squareup/picasso/RequestCreator;Landroid/widget/ImageView;Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;Landroid/content/Context;)V

    .line 216
    return-void
.end method

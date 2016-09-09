.class Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$PicassoTopRoundTransform;
.super Ljava/lang/Object;
.source "BitmapLoader.java"

# interfaces
.implements Lcom/squareup/picasso/Transformation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PicassoTopRoundTransform"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mRoundDip:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "roundDip"    # I

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const/4 v0, 0x7

    iput v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$PicassoTopRoundTransform;->mRoundDip:I

    .line 289
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$PicassoTopRoundTransform;->mContext:Landroid/content/Context;

    .line 290
    iput p2, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$PicassoTopRoundTransform;->mRoundDip:I

    .line 291
    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .registers 2

    .prologue
    .line 300
    const-string v0, "com.example.android.opengl.PicassoTopRoundTransform"

    return-object v0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "source"    # Landroid/graphics/Bitmap;

    .prologue
    .line 295
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$PicassoTopRoundTransform;->mContext:Landroid/content/Context;

    iget v1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$PicassoTopRoundTransform;->mRoundDip:I

    invoke-static {v0, v1}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->convertDiptoPix(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1, v0}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->getRoundedTopCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

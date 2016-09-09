.class public Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;
.super Ljava/lang/Object;
.source "BitmapLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$PicassoTopRoundTransform;,
        Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$PicassoCircleTransform;,
        Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;,
        Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;
    }
.end annotation


# static fields
.field public static final PICASSO_CIRCLE_TRANSFORM_KEY:Ljava/lang/String; = "com.example.android.opengl.PicassoCircleTransform"

.field public static final PICASSO_TOP_ROUND_TRANSFORM_KEY:Ljava/lang/String; = "com.example.android.opengl.PicassoTopRoundTransform"

.field private static final TAG:Ljava/lang/String; = "BitmapLoader"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    return-void
.end method

.method static synthetic access$100(Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;Landroid/content/Context;)Lcom/squareup/picasso/RequestCreator;
    .registers 3
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-static {p0, p1}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->createRequestWithFile(Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;Landroid/content/Context;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/squareup/picasso/RequestCreator;Landroid/widget/ImageView;Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;Landroid/content/Context;)V
    .registers 4
    .param p0, "x0"    # Lcom/squareup/picasso/RequestCreator;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;
    .param p3, "x3"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-static {p0, p1, p2, p3}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->uiPicassoSet(Lcom/squareup/picasso/RequestCreator;Landroid/widget/ImageView;Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;Landroid/content/Context;)V

    return-void
.end method

.method private static createRequestWithFile(Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;Landroid/content/Context;)Lcom/squareup/picasso/RequestCreator;
    .registers 4
    .param p0, "imageSet"    # Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->hasValidPlaceholder()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_19

    .line 222
    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 230
    :goto_18
    return-object v0

    .line 223
    :cond_19
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->hasValidPlaceholder()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 224
    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget v1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->mPlaceholderResource:I

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    goto :goto_18

    .line 225
    :cond_38
    iget v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->mResource:I

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->hasValidPlaceholder()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_51

    .line 226
    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget v1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->mResource:I

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    goto :goto_18

    .line 227
    :cond_51
    iget v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->mResource:I

    if-eqz v0, :cond_70

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->hasValidPlaceholder()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 228
    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget v1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->mResource:I

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget v1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->mPlaceholderResource:I

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    goto :goto_18

    .line 230
    :cond_70
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static downloadBitmapAndSaveToDevice(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 12
    .param p0, "blobLink"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 137
    if-nez p2, :cond_3

    .line 184
    :goto_2
    return-void

    .line 141
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/omplay/screenshots/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "directory":Ljava/lang/String;
    :try_start_1e
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v4, "omletDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2c

    .line 146
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 149
    :cond_2c
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v3, "file":Ljava/io/File;
    new-instance v5, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$1;

    invoke-direct {v5, v3, p2}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$1;-><init>(Ljava/io/File;Landroid/app/Activity;)V

    .line 177
    .local v5, "target":Lcom/squareup/picasso/Target;
    move-object v0, p2

    .line 178
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p0}, Lmobisocial/omlib/model/OmletModel$Blobs;->uriForBlobLink(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 179
    .local v6, "uri":Landroid/net/Uri;
    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_57} :catch_58

    goto :goto_2

    .line 180
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "omletDir":Ljava/io/File;
    .end local v5    # "target":Lcom/squareup/picasso/Target;
    .end local v6    # "uri":Landroid/net/Uri;
    :catch_58
    move-exception v2

    .line 181
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "BitmapLoader"

    const-string v8, "Error "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    const-string v7, "omp_bitmapLoader_problem_saving_screenshot"

    invoke-static {p2, v7}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {p2, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method public static loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Landroid/os/CancellationSignal;)V
    .registers 5
    .param p0, "blobLink"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cancelSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 123
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;->BITMAP_SQUARE:Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;

    invoke-static {p0, p1, p2, v0, p3}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;Landroid/os/CancellationSignal;)V

    .line 124
    return-void
.end method

.method public static loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;Landroid/os/CancellationSignal;)V
    .registers 6
    .param p0, "blobLink"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bitmapStyle"    # Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;
    .param p4, "cancelSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 127
    if-eqz p2, :cond_4

    if-nez p0, :cond_5

    .line 131
    :cond_4
    :goto_4
    return-void

    .line 129
    :cond_5
    invoke-static {p2, p0}, Lmobisocial/omlib/model/OmletModel$Blobs;->uriForBlobLink(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 130
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {v0, p1, p2, p3}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->uiSetBitmap(Landroid/net/Uri;Landroid/widget/ImageView;Landroid/content/Context;Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;)V

    goto :goto_4
.end method

.method public static loadProfile(ILandroid/widget/ImageView;Landroid/content/Context;Landroid/os/CancellationSignal;)V
    .registers 5
    .param p0, "resource"    # I
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cancelSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 107
    if-nez p2, :cond_3

    .line 110
    :goto_2
    return-void

    .line 109
    :cond_3
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;->BITMAP_CIRCLE:Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;

    invoke-static {p0, p1, p2, v0}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->uiSetBitmap(ILandroid/widget/ImageView;Landroid/content/Context;Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;)V

    goto :goto_2
.end method

.method public static loadProfile(Ljava/lang/String;ILandroid/widget/ImageView;Landroid/content/Context;Landroid/os/CancellationSignal;)V
    .registers 8
    .param p0, "blobLink"    # Ljava/lang/String;
    .param p1, "placeholder"    # I
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "cancelSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 117
    invoke-static {p3, p0}, Lmobisocial/omlib/model/OmletModel$Blobs;->uriForBlobLink(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 118
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;

    invoke-direct {v0, v1, p1}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;-><init>(Landroid/net/Uri;I)V

    .line 119
    .local v0, "imageSet":Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;
    sget-object v2, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;->BITMAP_CIRCLE:Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;

    invoke-static {v0, p2, p3, v2}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->uiSetBitmap(Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;Landroid/widget/ImageView;Landroid/content/Context;Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;)V

    .line 120
    return-void
.end method

.method public static loadProfile(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Landroid/os/CancellationSignal;)V
    .registers 5
    .param p0, "blobLink"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cancelSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 113
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;->BITMAP_CIRCLE:Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;

    invoke-static {p0, p1, p2, v0, p3}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;Landroid/os/CancellationSignal;)V

    .line 114
    return-void
.end method

.method public static loadProfile([BLandroid/widget/ImageView;Landroid/content/Context;Landroid/os/CancellationSignal;)V
    .registers 6
    .param p0, "thumbnailHash"    # [B
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cancelSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 100
    if-eqz p2, :cond_4

    if-nez p0, :cond_5

    .line 104
    :cond_4
    :goto_4
    return-void

    .line 102
    :cond_5
    invoke-static {p2, p0}, Lmobisocial/omlib/model/OmletModel$Blobs;->uriForBlob(Landroid/content/Context;[B)Landroid/net/Uri;

    move-result-object v0

    .line 103
    .local v0, "uri":Landroid/net/Uri;
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;->BITMAP_CIRCLE:Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;

    invoke-static {v0, p1, p2, v1}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->uiSetBitmap(Landroid/net/Uri;Landroid/widget/ImageView;Landroid/content/Context;Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;)V

    goto :goto_4
.end method

.method private static uiPicassoSet(Lcom/squareup/picasso/RequestCreator;Landroid/widget/ImageView;Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;Landroid/content/Context;)V
    .registers 6
    .param p0, "picassoRequest"    # Lcom/squareup/picasso/RequestCreator;
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "bitmapStyle"    # Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 235
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;->BITMAP_CIRCLE:Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;

    if-ne p2, v0, :cond_15

    .line 236
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$PicassoCircleTransform;

    invoke-direct {v0}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$PicassoCircleTransform;-><init>()V

    invoke-virtual {p0, v0}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 264
    :goto_14
    return-void

    .line 237
    :cond_15
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;->BITMAP_TOP_ROUND_VIDEO:Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;

    if-ne p2, v0, :cond_30

    .line 238
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$PicassoTopRoundTransform;

    const/4 v1, 0x7

    invoke-direct {v0, p3, v1}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$PicassoTopRoundTransform;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$3;

    invoke-direct {v1, p1}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$3;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    goto :goto_14

    .line 249
    :cond_30
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;->BITMAP_TOP_ROUND_SCREENSHOT:Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;

    if-ne p2, v0, :cond_4c

    .line 250
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$PicassoTopRoundTransform;

    const/16 v1, 0xe

    invoke-direct {v0, p3, v1}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$PicassoTopRoundTransform;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$4;

    invoke-direct {v1, p1}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$4;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    goto :goto_14

    .line 262
    :cond_4c
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v0}, Lcom/squareup/picasso/RequestCreator;->config(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_14
.end method

.method private static uiSetBitmap(ILandroid/widget/ImageView;Landroid/content/Context;Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;)V
    .registers 5
    .param p0, "resource"    # I
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bitmapStyle"    # Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;

    .prologue
    .line 198
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;-><init>(I)V

    .line 199
    .local v0, "imageSet":Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;
    invoke-static {v0, p1, p2, p3}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->uiSetBitmap(Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;Landroid/widget/ImageView;Landroid/content/Context;Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;)V

    .line 200
    return-void
.end method

.method private static uiSetBitmap(Landroid/net/Uri;Landroid/widget/ImageView;Landroid/content/Context;Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;)V
    .registers 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bitmapStyle"    # Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;

    .prologue
    .line 190
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;-><init>(Landroid/net/Uri;)V

    .line 191
    .local v0, "imageSet":Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;
    invoke-static {v0, p1, p2, p3}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->uiSetBitmap(Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;Landroid/widget/ImageView;Landroid/content/Context;Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;)V

    .line 192
    return-void
.end method

.method private static uiSetBitmap(Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;Landroid/widget/ImageView;Landroid/content/Context;Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;)V
    .registers 6
    .param p0, "imageSet"    # Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bitmapStyle"    # Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;

    .prologue
    .line 207
    if-nez p2, :cond_3

    .line 218
    :goto_2
    return-void

    :cond_3
    move-object v0, p2

    .line 209
    check-cast v0, Landroid/app/Activity;

    .line 210
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$2;-><init>(Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;Landroid/content/Context;Landroid/widget/ImageView;Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

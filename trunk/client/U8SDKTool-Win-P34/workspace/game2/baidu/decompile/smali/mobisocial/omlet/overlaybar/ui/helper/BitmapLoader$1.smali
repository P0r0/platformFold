.class final Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$1;
.super Ljava/lang/Object;
.source "BitmapLoader.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->downloadBitmapAndSaveToDevice(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 151
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$1;->val$file:Ljava/io/File;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 170
    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .registers 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "from"    # Lcom/squareup/picasso/Picasso$LoadedFrom;

    .prologue
    const/4 v7, 0x0

    .line 155
    const/4 v1, 0x0

    .line 157
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$1;->val$file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_2d

    .line 158
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_9
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x55

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 159
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 161
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$1;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$1;->val$activity:Landroid/app/Activity;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$1;->val$activity:Landroid/app/Activity;

    const-string v6, "omp_bitmapLoader_saved_successfully"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2b} :catch_4d

    move-object v1, v2

    .line 166
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :goto_2c
    return-void

    .line 162
    :catch_2d
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    :goto_2e
    const-string v3, "BitmapLoader"

    const-string v4, "Error "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$1;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$1;->val$activity:Landroid/app/Activity;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$1;->val$activity:Landroid/app/Activity;

    const-string v6, "omp_bitmapLoader_problem_saving_screenshot"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_2c

    .line 162
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_4d
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_2e
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "placeHolderDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 174
    return-void
.end method

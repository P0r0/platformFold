.class public Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/vivo/sdkplugin/model/MFeedImageInfo;

.field private c:Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter$OnFeedImageListener;

.field private d:Landroid/view/LayoutInflater;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->d:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_13} :catch_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_13} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_67
    .catchall {:try_start_2 .. :try_end_13} :catchall_77

    move-result-object v1

    const/4 v4, 0x0

    :try_start_15
    invoke-static {v1, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v4, p0, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->f:I

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->e:I
    :try_end_20
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_20} :catch_c3
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_20} :catch_c1
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_20} :catch_bc
    .catchall {:try_start_15 .. :try_end_20} :catchall_b6

    if-eqz v1, :cond_25

    :try_start_22
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_83

    :cond_25
    :goto_25
    iget v1, p0, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->e:I

    div-int/lit16 v1, v1, 0xda

    iget v3, p0, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->f:I

    div-int/lit16 v3, v3, 0xda

    if-ge v1, v3, :cond_88

    :goto_2f
    if-gtz v1, :cond_c5

    :goto_31
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :try_start_38
    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_41
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_41} :catch_8f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_38 .. :try_end_41} :catch_a0
    .catchall {:try_start_38 .. :try_end_41} :catchall_a2

    move-result-object v1

    const/4 v0, 0x0

    :try_start_43
    invoke-static {v1, v0, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_43 .. :try_end_46} :catch_b4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_43 .. :try_end_46} :catch_b1
    .catchall {:try_start_43 .. :try_end_46} :catchall_ae

    move-result-object v0

    if-eqz v1, :cond_4c

    :try_start_49
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_8a

    :cond_4c
    :goto_4c
    return-object v0

    :catch_4d
    move-exception v1

    move-object v1, v2

    :goto_4f
    if-eqz v1, :cond_25

    :try_start_51
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_25

    :catch_55
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25

    :catch_5a
    move-exception v1

    move-object v1, v2

    :goto_5c
    if-eqz v1, :cond_25

    :try_start_5e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_25

    :catch_62
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25

    :catch_67
    move-exception v1

    move-object v3, v2

    :goto_69
    :try_start_69
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_b9

    if-eqz v3, :cond_25

    :try_start_6e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_25

    :catch_72
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25

    :catchall_77
    move-exception v0

    :goto_78
    if-eqz v2, :cond_7d

    :try_start_7a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    :cond_7d
    :goto_7d
    throw v0

    :catch_7e
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7d

    :catch_83
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25

    :cond_88
    move v1, v3

    goto :goto_2f

    :catch_8a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c

    :catch_8f
    move-exception v0

    move-object v1, v2

    :goto_91
    :try_start_91
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_ae

    if-eqz v1, :cond_99

    :try_start_96
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9b

    :cond_99
    :goto_99
    move-object v0, v2

    goto :goto_4c

    :catch_9b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_99

    :catch_a0
    move-exception v0

    :goto_a1
    :try_start_a1
    throw v0
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a2

    :catchall_a2
    move-exception v0

    :goto_a3
    if-eqz v2, :cond_a8

    :try_start_a5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_a9

    :cond_a8
    :goto_a8
    throw v0

    :catch_a9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a8

    :catchall_ae
    move-exception v0

    move-object v2, v1

    goto :goto_a3

    :catch_b1
    move-exception v0

    move-object v2, v1

    goto :goto_a1

    :catch_b4
    move-exception v0

    goto :goto_91

    :catchall_b6
    move-exception v0

    move-object v2, v1

    goto :goto_78

    :catchall_b9
    move-exception v0

    move-object v2, v3

    goto :goto_78

    :catch_bc
    move-exception v3

    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    goto :goto_69

    :catch_c1
    move-exception v3

    goto :goto_5c

    :catch_c3
    move-exception v3

    goto :goto_4f

    :cond_c5
    move v0, v1

    goto/16 :goto_31
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;)Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter$OnFeedImageListener;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->c:Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter$OnFeedImageListener;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/4 v5, 0x0

    const-string v0, "-------getView()---------"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "position: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->d:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->a:Landroid/content/Context;

    const-string v2, "layout"

    const-string v3, "vivo_feed_back_image_item"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vivo/sdkplugin/adapter/f;

    invoke-direct {v2}, Lcom/vivo/sdkplugin/adapter/f;-><init>()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->a:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "vivo_feed_img_item_layout"

    invoke-static {v0, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v2, Lcom/vivo/sdkplugin/adapter/f;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->a:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "vivo_feed_img_layout"

    invoke-static {v0, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v2, Lcom/vivo/sdkplugin/adapter/f;->b:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->a:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "vivo_feed_img"

    invoke-static {v0, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/vivo/sdkplugin/adapter/f;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->a:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "vivo_delete_btn"

    invoke-static {v0, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/vivo/sdkplugin/adapter/f;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->b:Lcom/vivo/sdkplugin/model/MFeedImageInfo;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/model/MFeedImageInfo;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->a(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, v2, Lcom/vivo/sdkplugin/adapter/f;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, v2, Lcom/vivo/sdkplugin/adapter/f;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/vivo/sdkplugin/adapter/f;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, v2, Lcom/vivo/sdkplugin/adapter/f;->d:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/vivo/sdkplugin/adapter/f;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->a:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "vivo_delete_btn"

    invoke-static {v3, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->b:Lcom/vivo/sdkplugin/model/MFeedImageInfo;

    invoke-virtual {v4}, Lcom/vivo/sdkplugin/model/MFeedImageInfo;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object v0, v2, Lcom/vivo/sdkplugin/adapter/f;->d:Landroid/widget/ImageView;

    new-instance v3, Lcom/vivo/sdkplugin/adapter/e;

    invoke-direct {v3, p0, v2}, Lcom/vivo/sdkplugin/adapter/e;-><init>(Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;Lcom/vivo/sdkplugin/adapter/f;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public setData(Lcom/vivo/sdkplugin/model/MFeedImageInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->b:Lcom/vivo/sdkplugin/model/MFeedImageInfo;

    return-void
.end method

.method public setOnFeedImageListener(Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter$OnFeedImageListener;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter;->c:Lcom/vivo/sdkplugin/adapter/MyFeedPicAdapter$OnFeedImageListener;

    return-void
.end method

.class Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$25;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->serverSetProfilePicture(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/omlib/service/util/ServiceRunnable",
        "<",
        "Lmobisocial/omlib/api/OmletApi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    .prologue
    .line 931
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$25;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$25;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 931
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$25;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 13
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 936
    const/16 v1, 0x64

    .line 937
    .local v1, "longEdge":I
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$25;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$25;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_4f

    .line 938
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$25;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 940
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$25;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$25;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$25;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    invoke-static {v6, v7, v10, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 946
    .local v2, "squareBitmap":Landroid/graphics/Bitmap;
    :goto_2d
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 947
    .local v5, "thumbnailStream":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x55

    invoke-virtual {v2, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 948
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 949
    .local v4, "thumbnailByteArray":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 952
    .local v3, "stream":Ljava/io/InputStream;
    :try_start_42
    invoke-interface {p1}, Lmobisocial/omlib/api/OmletApi;->identity()Lmobisocial/omlib/api/OmletIdentityApi;

    move-result-object v6

    invoke-interface {v6, v3}, Lmobisocial/omlib/api/OmletIdentityApi;->setUserProfileImage(Ljava/io/InputStream;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_49} :catch_6b
    .catchall {:try_start_42 .. :try_end_49} :catchall_75

    .line 956
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$25;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # setter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBitmapToSend:Landroid/graphics/Bitmap;
    invoke-static {v6, v9}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$1102(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 958
    :goto_4e
    return-void

    .line 942
    .end local v2    # "squareBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "stream":Ljava/io/InputStream;
    .end local v4    # "thumbnailByteArray":[B
    .end local v5    # "thumbnailStream":Ljava/io/ByteArrayOutputStream;
    :cond_4f
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$25;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 944
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$25;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$25;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$25;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    invoke-static {v6, v10, v7, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "squareBitmap":Landroid/graphics/Bitmap;
    goto :goto_2d

    .line 953
    .restart local v3    # "stream":Ljava/io/InputStream;
    .restart local v4    # "thumbnailByteArray":[B
    .restart local v5    # "thumbnailStream":Ljava/io/ByteArrayOutputStream;
    :catch_6b
    move-exception v0

    .line 954
    .local v0, "e":Ljava/io/IOException;
    :try_start_6c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_75

    .line 956
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$25;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # setter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBitmapToSend:Landroid/graphics/Bitmap;
    invoke-static {v6, v9}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$1102(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_4e

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_75
    move-exception v6

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$25;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # setter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBitmapToSend:Landroid/graphics/Bitmap;
    invoke-static {v7, v9}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$1102(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    throw v6
.end method

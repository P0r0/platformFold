.class public final Lmobisocial/omlib/sendable/SendUtils;
.super Ljava/lang/Object;
.source "SendUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCustom(Ljava/lang/String;)Lmobisocial/omlib/sendable/CustomSendable;
    .registers 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v0, Lmobisocial/omlib/sendable/CustomSendable;

    invoke-direct {v0, p0}, Lmobisocial/omlib/sendable/CustomSendable;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createFile(Landroid/net/Uri;Ljava/lang/String;)Lmobisocial/omlib/sendable/FileSendable;
    .registers 3
    .param p0, "fileUri"    # Landroid/net/Uri;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 69
    new-instance v0, Lmobisocial/omlib/sendable/FileSendable;

    invoke-direct {v0, p0, p1}, Lmobisocial/omlib/sendable/FileSendable;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createPicture(Landroid/net/Uri;)Lmobisocial/omlib/sendable/PictureSendable;
    .registers 2
    .param p0, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 58
    new-instance v0, Lmobisocial/omlib/sendable/PictureSendable;

    invoke-direct {v0, p0}, Lmobisocial/omlib/sendable/PictureSendable;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method public static createRdl()Lmobisocial/omlib/sendable/RdlSendable;
    .registers 1

    .prologue
    .line 65
    new-instance v0, Lmobisocial/omlib/sendable/RdlSendable;

    invoke-direct {v0}, Lmobisocial/omlib/sendable/RdlSendable;-><init>()V

    return-object v0
.end method

.method public static createText(Ljava/lang/String;)Lmobisocial/omlib/sendable/TextSendable;
    .registers 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Lmobisocial/omlib/sendable/TextSendable;

    invoke-direct {v0, p0}, Lmobisocial/omlib/sendable/TextSendable;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createTextOrStory(Lmobisocial/omlib/api/OmletApi;Ljava/lang/String;)Lmobisocial/omlib/interfaces/Sendable;
    .registers 4
    .param p0, "api"    # Lmobisocial/omlib/api/OmletApi;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 36
    :try_start_6
    invoke-interface {p0}, Lmobisocial/omlib/api/OmletApi;->messaging()Lmobisocial/omlib/api/OmletMessagingApi;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lmobisocial/omlib/api/OmletMessagingApi;->storyForUrl(Landroid/net/Uri;)Lmobisocial/omlib/interfaces/Sendable;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_11} :catch_13

    move-result-object v0

    .line 40
    :goto_12
    return-object v0

    .line 37
    :catch_13
    move-exception v0

    .line 40
    :cond_14
    invoke-static {p1}, Lmobisocial/omlib/sendable/SendUtils;->createText(Ljava/lang/String;)Lmobisocial/omlib/sendable/TextSendable;

    move-result-object v0

    goto :goto_12
.end method

.class public Lmobisocial/omlib/model/OmletModel$Blobs;
.super Ljava/lang/Object;
.source "OmletModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/model/OmletModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blobs"
.end annotation


# static fields
.field protected static final hexArray:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 685
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmobisocial/omlib/model/OmletModel$Blobs;->hexArray:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .registers 7
    .param p0, "bytes"    # [B

    .prologue
    .line 688
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 689
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_6
    array-length v3, p0

    if-ge v1, v3, :cond_26

    .line 690
    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    .line 691
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lmobisocial/omlib/model/OmletModel$Blobs;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 692
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lmobisocial/omlib/model/OmletModel$Blobs;->hexArray:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 689
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 694
    .end local v2    # "v":I
    :cond_26
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static uriForBlob(Landroid/content/Context;[B)Landroid/net/Uri;
    .registers 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "blobHash"    # [B

    .prologue
    .line 637
    invoke-static {p0}, Lmobisocial/omlib/model/OmletModel;->getBaseUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/blobs/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lmobisocial/omlib/model/OmletModel$Blobs;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static uriForBlob(Landroid/content/Context;[BI)Landroid/net/Uri;
    .registers 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "blobHash"    # [B
    .param p2, "timeoutSeconds"    # I

    .prologue
    .line 659
    invoke-static {p0}, Lmobisocial/omlib/model/OmletModel;->getBaseUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "blobs"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Lmobisocial/omlib/model/OmletModel$Blobs;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "timeout"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static uriForBlobLink(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "blobLink"    # Ljava/lang/String;

    .prologue
    .line 649
    invoke-static {p0}, Lmobisocial/omlib/service/LongdanClientHelper;->getInstance(Landroid/content/Context;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    invoke-virtual {v1, p1}, Lmobisocial/omlib/client/ClientBlobUtils;->hashFromLongdanUrl(Ljava/lang/String;)[B

    move-result-object v0

    .line 650
    .local v0, "blobHash":[B
    invoke-static {p0, v0}, Lmobisocial/omlib/model/OmletModel$Blobs;->uriForBlob(Landroid/content/Context;[B)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "blobLink"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static uriForBlobLocal(Landroid/content/Context;[B)Landroid/net/Uri;
    .registers 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "blobHash"    # [B

    .prologue
    .line 682
    invoke-static {p0}, Lmobisocial/omlib/model/OmletModel;->getBaseUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "blobs"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Lmobisocial/omlib/model/OmletModel$Blobs;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "localOnly"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

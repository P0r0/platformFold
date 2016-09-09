.class public Lcom/duoku/platform/download/DownloadManager$Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final NETWORK_MOBILE:I = 0x1

.field public static final NETWORK_WIFI:I = 0x2


# instance fields
.field private mAllowedNetworkTypes:I

.field private mDescription:Ljava/lang/CharSequence;

.field private mDestinationUri:Landroid/net/Uri;

.field private mIsVisibleInDownloadsUi:Z

.field private mMimeType:Ljava/lang/String;

.field private mRequestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/utils/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRoamingAllowed:Z

.field private mShowNotification:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 338
    const-class v0, Lcom/duoku/platform/download/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/duoku/platform/download/DownloadManager$Request;->$assertionsDisabled:Z

    .line 350
    return-void

    .line 338
    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    .line 362
    iput-boolean v1, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mShowNotification:Z

    .line 366
    iput-boolean v1, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mRoamingAllowed:Z

    .line 368
    const/4 v0, -0x1

    iput v0, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mAllowedNetworkTypes:I

    .line 370
    iput-boolean v1, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    .line 380
    if-nez p1, :cond_1c

    .line 382
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 384
    :cond_1c
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_2a

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 387
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only download HTTP URIs: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_3f
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mUri:Landroid/net/Uri;

    .line 390
    return-void
.end method

.method private encodeHttpHeaders(Landroid/content/ContentValues;)V
    .registers 7

    .prologue
    .line 667
    const/4 v0, 0x0

    .line 668
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 674
    return-void

    .line 668
    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/utils/Pair;

    .line 670
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/duoku/platform/download/utils/Pair;->mFirst:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/duoku/platform/download/utils/Pair;->mSecond:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "http_header_"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8
.end method

.method private putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 688
    if-eqz p3, :cond_9

    .line 690
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :cond_9
    return-void
.end method

.method private setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 464
    if-nez p2, :cond_a

    .line 466
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "subPath cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_a
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    .line 469
    return-void
.end method


# virtual methods
.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/duoku/platform/download/DownloadManager$Request;
    .registers 5

    .prologue
    .line 486
    if-nez p1, :cond_a

    .line 488
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "header cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_a
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 492
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "header may not contain \':\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_1a
    if-nez p2, :cond_1e

    .line 496
    const-string p2, ""

    .line 498
    :cond_1e
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/duoku/platform/download/utils/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/duoku/platform/download/utils/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    return-object p0
.end method

.method public setAllowedNetworkTypes(I)Lcom/duoku/platform/download/DownloadManager$Request;
    .registers 2

    .prologue
    .line 579
    iput p1, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mAllowedNetworkTypes:I

    .line 580
    return-object p0
.end method

.method public setAllowedOverRoaming(Z)Lcom/duoku/platform/download/DownloadManager$Request;
    .registers 2

    .prologue
    .line 593
    iput-boolean p1, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mRoamingAllowed:Z

    .line 594
    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Lcom/duoku/platform/download/DownloadManager$Request;
    .registers 2

    .prologue
    .line 527
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mDescription:Ljava/lang/CharSequence;

    .line 528
    return-object p0
.end method

.method public setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Lcom/duoku/platform/download/DownloadManager$Request;
    .registers 5

    .prologue
    .line 449
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 450
    invoke-direct {p0, v0, p2}, Lcom/duoku/platform/download/DownloadManager$Request;->setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V

    .line 451
    return-object p0
.end method

.method public setDestinationUri(Landroid/net/Uri;)Lcom/duoku/platform/download/DownloadManager$Request;
    .registers 2

    .prologue
    .line 407
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    .line 408
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/duoku/platform/download/DownloadManager$Request;
    .registers 2

    .prologue
    .line 544
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    .line 545
    return-object p0
.end method

.method public setShowRunningNotification(Z)Lcom/duoku/platform/download/DownloadManager$Request;
    .registers 2

    .prologue
    .line 565
    iput-boolean p1, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mShowNotification:Z

    .line 566
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/duoku/platform/download/DownloadManager$Request;
    .registers 2

    .prologue
    .line 513
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mTitle:Ljava/lang/CharSequence;

    .line 514
    return-object p0
.end method

.method public setVisibleInDownloadsUi(Z)Lcom/duoku/platform/download/DownloadManager$Request;
    .registers 2

    .prologue
    .line 607
    iput-boolean p1, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    .line 608
    return-object p0
.end method

.method toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 6

    .prologue
    const/4 v0, 0x2

    .line 620
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 621
    sget-boolean v1, Lcom/duoku/platform/download/DownloadManager$Request;->$assertionsDisabled:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 622
    :cond_14
    const-string v1, "uri"

    iget-object v3, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v1, "is_public_api"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 624
    const-string v1, "notificationpackage"

    invoke-virtual {v2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    if-eqz v1, :cond_97

    .line 628
    const-string v1, "destination"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 629
    const-string v1, "hint"

    iget-object v3, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :goto_47
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_52

    .line 638
    invoke-direct {p0, v2}, Lcom/duoku/platform/download/DownloadManager$Request;->encodeHttpHeaders(Landroid/content/ContentValues;)V

    .line 641
    :cond_52
    const-string v1, "title"

    iget-object v3, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v1, v3}, Lcom/duoku/platform/download/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 642
    const-string v1, "description"

    iget-object v3, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mDescription:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v1, v3}, Lcom/duoku/platform/download/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 643
    const-string v1, "mimetype"

    iget-object v3, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v3}, Lcom/duoku/platform/download/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 645
    const/4 v1, 0x0

    .line 646
    iget-boolean v3, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mShowNotification:Z

    if-nez v3, :cond_a1

    .line 650
    :goto_6c
    const-string v1, "visibility"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 652
    const-string v0, "allowed_network_types"

    iget v1, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mAllowedNetworkTypes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 653
    const-string v0, "allow_roaming"

    iget-boolean v1, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mRoamingAllowed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 654
    const-string v0, "is_visible_in_downloads_ui"

    iget-boolean v1, p0, Lcom/duoku/platform/download/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 656
    return-object v2

    .line 633
    :cond_97
    const-string v1, "destination"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_47

    :cond_a1
    move v0, v1

    goto :goto_6c
.end method

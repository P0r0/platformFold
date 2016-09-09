.class public Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;
.super Ljava/lang/Object;
.source "BitmapLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoaderImageSet"
.end annotation


# instance fields
.field mPlaceholderResource:I

.field mResource:I

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "resource"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->setMemberDefaults()V

    .line 74
    iput p1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->mResource:I

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->setMemberDefaults()V

    .line 69
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->mUri:Landroid/net/Uri;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "placeholderResource"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->setMemberDefaults()V

    .line 79
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->mUri:Landroid/net/Uri;

    .line 80
    iput p2, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->mPlaceholderResource:I

    .line 81
    return-void
.end method

.method private setMemberDefaults()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->mUri:Landroid/net/Uri;

    .line 85
    iput v1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->mResource:I

    .line 86
    iput v1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->mPlaceholderResource:I

    .line 87
    return-void
.end method


# virtual methods
.method public hasValidPlaceholder()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$LoaderImageSet;->mPlaceholderResource:I

    if-eqz v0, :cond_a

    .line 91
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 92
    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_9
.end method

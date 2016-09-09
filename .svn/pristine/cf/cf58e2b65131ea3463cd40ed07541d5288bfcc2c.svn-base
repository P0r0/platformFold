.class final Lcom/huanju/data/content/raw/video/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/huanju/data/content/raw/video/HjVideoListItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/huanju/data/content/raw/video/HjVideoListItem;
    .registers 6

    new-instance v1, Lcom/huanju/data/content/raw/video/HjVideoListItem;

    invoke-direct {v1}, Lcom/huanju/data/content/raw/video/HjVideoListItem;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/huanju/data/content/raw/video/HjVideoListItem;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/huanju/data/content/raw/video/HjVideoListItem;->source:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/huanju/data/content/raw/video/HjVideoListItem;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/huanju/data/content/raw/video/HjVideoListItem;->ctime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/huanju/data/content/raw/video/HjVideoListItem;->tag:Ljava/lang/String;

    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v1, Lcom/huanju/data/content/raw/video/HjVideoListItem;->keywords:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/huanju/data/content/raw/video/HjVideoListItem;->previewUrl:Ljava/lang/String;

    return-object v1
.end method

.method public a(I)[Lcom/huanju/data/content/raw/video/HjVideoListItem;
    .registers 3

    new-array v0, p1, [Lcom/huanju/data/content/raw/video/HjVideoListItem;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/huanju/data/content/raw/video/j;->a(Landroid/os/Parcel;)Lcom/huanju/data/content/raw/video/HjVideoListItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/huanju/data/content/raw/video/j;->a(I)[Lcom/huanju/data/content/raw/video/HjVideoListItem;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/huanju/data/content/raw/info/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
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
.method public a(Landroid/os/Parcel;)Lcom/huanju/data/content/raw/info/HjInfoListItem;
    .registers 6

    new-instance v1, Lcom/huanju/data/content/raw/info/HjInfoListItem;

    invoke-direct {v1}, Lcom/huanju/data/content/raw/info/HjInfoListItem;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->source:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->vcnt:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->ctime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->tag:Ljava/lang/String;

    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->images:Ljava/util/List;

    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->keywords:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->package_name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->preview:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->approval_cnt:Ljava/lang/String;

    return-object v1
.end method

.method public a(I)[Lcom/huanju/data/content/raw/info/HjInfoListItem;
    .registers 3

    new-array v0, p1, [Lcom/huanju/data/content/raw/info/HjInfoListItem;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/huanju/data/content/raw/info/l;->a(Landroid/os/Parcel;)Lcom/huanju/data/content/raw/info/HjInfoListItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/huanju/data/content/raw/info/l;->a(I)[Lcom/huanju/data/content/raw/info/HjInfoListItem;

    move-result-object v0

    return-object v0
.end method

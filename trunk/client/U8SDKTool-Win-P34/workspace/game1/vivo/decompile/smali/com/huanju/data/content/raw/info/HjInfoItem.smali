.class public Lcom/huanju/data/content/raw/info/HjInfoItem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ctime:J

.field private game_id:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keyword:[Ljava/lang/String;

.field private keywords:Ljava/lang/String;

.field private package_name:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private thumb_image_list:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type_tag:Ljava/lang/String;

.field private v_cnt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/huanju/data/content/raw/info/o;

    invoke-direct {v0}, Lcom/huanju/data/content/raw/info/o;-><init>()V

    sput-object v0, Lcom/huanju/data/content/raw/info/HjInfoItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->id:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->game_id:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->title:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->source:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->keywords:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->thumb_image_list:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->type_tag:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->v_cnt:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->ctime:J

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->package_name:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->keyword:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->images:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lcom/huanju/data/content/raw/info/HjInfoItem;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1002(Lcom/huanju/data/content/raw/info/HjInfoItem;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->images:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$102(Lcom/huanju/data/content/raw/info/HjInfoItem;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->game_id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/huanju/data/content/raw/info/HjInfoItem;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->keyword:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/huanju/data/content/raw/info/HjInfoItem;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/huanju/data/content/raw/info/HjInfoItem;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->source:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/huanju/data/content/raw/info/HjInfoItem;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->keywords:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/huanju/data/content/raw/info/HjInfoItem;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->thumb_image_list:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/huanju/data/content/raw/info/HjInfoItem;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->type_tag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/huanju/data/content/raw/info/HjInfoItem;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->v_cnt:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/huanju/data/content/raw/info/HjInfoItem;J)J
    .registers 4

    iput-wide p1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->ctime:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/huanju/data/content/raw/info/HjInfoItem;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->package_name:Ljava/lang/String;

    return-object p1
.end method

.method public static getCreator()Landroid/os/Parcelable$Creator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/huanju/data/content/raw/info/HjInfoItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method

.method private parserImage(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v5, -0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_4c

    const-string v1, "\""

    const-string v3, ""

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\\\"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move v1, v0

    :goto_2c
    if-eq v0, v5, :cond_4c

    const-string v0, ","

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_40

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v0, 0x1

    goto :goto_2c

    :cond_40
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_4c
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCtime()J
    .registers 3

    iget-wide v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->ctime:J

    return-wide v0
.end method

.method public getGame_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->images:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_14

    :cond_c
    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->thumb_image_list:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huanju/data/content/raw/info/HjInfoItem;->parserImage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->images:Ljava/util/List;

    :cond_14
    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->images:Ljava/util/List;

    return-object v0
.end method

.method public getKeyword()[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->keyword:[Ljava/lang/String;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->keywords:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->keyword:[Ljava/lang/String;

    :cond_e
    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->keyword:[Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb_image_list()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->thumb_image_list:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType_tag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->type_tag:Ljava/lang/String;

    return-object v0
.end method

.method public getV_cnt()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->v_cnt:Ljava/lang/String;

    return-object v0
.end method

.method public setCtime(J)V
    .registers 4

    iput-wide p1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->ctime:J

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->id:Ljava/lang/String;

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->keywords:Ljava/lang/String;

    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->package_name:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->source:Ljava/lang/String;

    return-void
.end method

.method public setThumb_image_list(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->thumb_image_list:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setType_tag(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->type_tag:Ljava/lang/String;

    return-void
.end method

.method public setV_cnt(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->v_cnt:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->type_tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";keywords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->keywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";vcnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->v_cnt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";ctime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->ctime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";thumb_image_list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->thumb_image_list:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->game_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->keywords:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->thumb_image_list:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->type_tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->v_cnt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->ctime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->package_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->images:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/HjInfoItem;->keyword:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    return-void
.end method

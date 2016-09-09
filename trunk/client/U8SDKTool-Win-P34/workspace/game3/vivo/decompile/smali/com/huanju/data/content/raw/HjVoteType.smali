.class public final enum Lcom/huanju/data/content/raw/HjVoteType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huanju/data/content/raw/HjVoteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huanju/data/content/raw/HjVoteType;

.field public static final enum article:Lcom/huanju/data/content/raw/HjVoteType;

.field public static final enum gallery:Lcom/huanju/data/content/raw/HjVoteType;

.field public static final enum video:Lcom/huanju/data/content/raw/HjVoteType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/huanju/data/content/raw/HjVoteType;

    const-string v1, "article"

    invoke-direct {v0, v1, v2}, Lcom/huanju/data/content/raw/HjVoteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/data/content/raw/HjVoteType;->article:Lcom/huanju/data/content/raw/HjVoteType;

    new-instance v0, Lcom/huanju/data/content/raw/HjVoteType;

    const-string v1, "video"

    invoke-direct {v0, v1, v3}, Lcom/huanju/data/content/raw/HjVoteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/data/content/raw/HjVoteType;->video:Lcom/huanju/data/content/raw/HjVoteType;

    new-instance v0, Lcom/huanju/data/content/raw/HjVoteType;

    const-string v1, "gallery"

    invoke-direct {v0, v1, v4}, Lcom/huanju/data/content/raw/HjVoteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/data/content/raw/HjVoteType;->gallery:Lcom/huanju/data/content/raw/HjVoteType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huanju/data/content/raw/HjVoteType;

    sget-object v1, Lcom/huanju/data/content/raw/HjVoteType;->article:Lcom/huanju/data/content/raw/HjVoteType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huanju/data/content/raw/HjVoteType;->video:Lcom/huanju/data/content/raw/HjVoteType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huanju/data/content/raw/HjVoteType;->gallery:Lcom/huanju/data/content/raw/HjVoteType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/huanju/data/content/raw/HjVoteType;->$VALUES:[Lcom/huanju/data/content/raw/HjVoteType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huanju/data/content/raw/HjVoteType;
    .registers 2

    const-class v0, Lcom/huanju/data/content/raw/HjVoteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huanju/data/content/raw/HjVoteType;

    return-object v0
.end method

.method public static values()[Lcom/huanju/data/content/raw/HjVoteType;
    .registers 1

    sget-object v0, Lcom/huanju/data/content/raw/HjVoteType;->$VALUES:[Lcom/huanju/data/content/raw/HjVoteType;

    invoke-virtual {v0}, [Lcom/huanju/data/content/raw/HjVoteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huanju/data/content/raw/HjVoteType;

    return-object v0
.end method

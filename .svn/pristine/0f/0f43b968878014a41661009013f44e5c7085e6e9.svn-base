.class public enum Lcom/edmodo/rangebar/MeasureSpecMode;
.super Ljava/lang/Enum;
.source "MeasureSpecMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/edmodo/rangebar/MeasureSpecMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/edmodo/rangebar/MeasureSpecMode;

.field public static final enum AT_MOST:Lcom/edmodo/rangebar/MeasureSpecMode;

.field public static final enum EXACTLY:Lcom/edmodo/rangebar/MeasureSpecMode;

.field public static final enum UNSPECIFIED:Lcom/edmodo/rangebar/MeasureSpecMode;


# instance fields
.field private final mModeValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/edmodo/rangebar/MeasureSpecMode$1;

    const-string v1, "AT_MOST"

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v3, v2}, Lcom/edmodo/rangebar/MeasureSpecMode$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/edmodo/rangebar/MeasureSpecMode;->AT_MOST:Lcom/edmodo/rangebar/MeasureSpecMode;

    .line 27
    new-instance v0, Lcom/edmodo/rangebar/MeasureSpecMode$2;

    const-string v1, "EXACTLY"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v4, v2}, Lcom/edmodo/rangebar/MeasureSpecMode$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/edmodo/rangebar/MeasureSpecMode;->EXACTLY:Lcom/edmodo/rangebar/MeasureSpecMode;

    .line 29
    new-instance v0, Lcom/edmodo/rangebar/MeasureSpecMode$3;

    const-string v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v5, v3}, Lcom/edmodo/rangebar/MeasureSpecMode$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/edmodo/rangebar/MeasureSpecMode;->UNSPECIFIED:Lcom/edmodo/rangebar/MeasureSpecMode;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/edmodo/rangebar/MeasureSpecMode;

    sget-object v1, Lcom/edmodo/rangebar/MeasureSpecMode;->AT_MOST:Lcom/edmodo/rangebar/MeasureSpecMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/edmodo/rangebar/MeasureSpecMode;->EXACTLY:Lcom/edmodo/rangebar/MeasureSpecMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/edmodo/rangebar/MeasureSpecMode;->UNSPECIFIED:Lcom/edmodo/rangebar/MeasureSpecMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/edmodo/rangebar/MeasureSpecMode;->$VALUES:[Lcom/edmodo/rangebar/MeasureSpecMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "modeValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/edmodo/rangebar/MeasureSpecMode;->mModeValue:I

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/edmodo/rangebar/MeasureSpecMode$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/edmodo/rangebar/MeasureSpecMode$1;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/edmodo/rangebar/MeasureSpecMode;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static getMode(I)Lcom/edmodo/rangebar/MeasureSpecMode;
    .registers 7
    .param p0, "measureSpec"    # I

    .prologue
    .line 59
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 60
    .local v1, "modeValue":I
    invoke-static {}, Lcom/edmodo/rangebar/MeasureSpecMode;->values()[Lcom/edmodo/rangebar/MeasureSpecMode;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v4, :cond_18

    aget-object v0, v3, v2

    .line 61
    .local v0, "mode":Lcom/edmodo/rangebar/MeasureSpecMode;
    invoke-virtual {v0}, Lcom/edmodo/rangebar/MeasureSpecMode;->getModeValue()I

    move-result v5

    if-ne v5, v1, :cond_15

    .line 65
    .end local v0    # "mode":Lcom/edmodo/rangebar/MeasureSpecMode;
    :goto_14
    return-object v0

    .line 60
    .restart local v0    # "mode":Lcom/edmodo/rangebar/MeasureSpecMode;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 65
    .end local v0    # "mode":Lcom/edmodo/rangebar/MeasureSpecMode;
    :cond_18
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/edmodo/rangebar/MeasureSpecMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/edmodo/rangebar/MeasureSpecMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/edmodo/rangebar/MeasureSpecMode;

    return-object v0
.end method

.method public static values()[Lcom/edmodo/rangebar/MeasureSpecMode;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/edmodo/rangebar/MeasureSpecMode;->$VALUES:[Lcom/edmodo/rangebar/MeasureSpecMode;

    invoke-virtual {v0}, [Lcom/edmodo/rangebar/MeasureSpecMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/edmodo/rangebar/MeasureSpecMode;

    return-object v0
.end method


# virtual methods
.method public getModeValue()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/edmodo/rangebar/MeasureSpecMode;->mModeValue:I

    return v0
.end method

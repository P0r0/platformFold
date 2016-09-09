.class public final enum Lcom/baidu/sapi2/utils/enums/AccountType;
.super Ljava/lang/Enum;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/sapi2/utils/enums/AccountType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INCOMPLETE_USER:Lcom/baidu/sapi2/utils/enums/AccountType;

.field public static final enum NORMAL:Lcom/baidu/sapi2/utils/enums/AccountType;

.field public static final enum UNKNOWN:Lcom/baidu/sapi2/utils/enums/AccountType;

.field private static final synthetic b:[Lcom/baidu/sapi2/utils/enums/AccountType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/baidu/sapi2/utils/enums/AccountType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/sapi2/utils/enums/AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/AccountType;->NORMAL:Lcom/baidu/sapi2/utils/enums/AccountType;

    .line 18
    new-instance v0, Lcom/baidu/sapi2/utils/enums/AccountType;

    const-string v1, "INCOMPLETE_USER"

    invoke-direct {v0, v1, v3, v3}, Lcom/baidu/sapi2/utils/enums/AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/AccountType;->INCOMPLETE_USER:Lcom/baidu/sapi2/utils/enums/AccountType;

    .line 23
    new-instance v0, Lcom/baidu/sapi2/utils/enums/AccountType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/baidu/sapi2/utils/enums/AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/AccountType;->UNKNOWN:Lcom/baidu/sapi2/utils/enums/AccountType;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/sapi2/utils/enums/AccountType;

    sget-object v1, Lcom/baidu/sapi2/utils/enums/AccountType;->NORMAL:Lcom/baidu/sapi2/utils/enums/AccountType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/sapi2/utils/enums/AccountType;->INCOMPLETE_USER:Lcom/baidu/sapi2/utils/enums/AccountType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/sapi2/utils/enums/AccountType;->UNKNOWN:Lcom/baidu/sapi2/utils/enums/AccountType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/sapi2/utils/enums/AccountType;->b:[Lcom/baidu/sapi2/utils/enums/AccountType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/baidu/sapi2/utils/enums/AccountType;->a:I

    .line 29
    return-void
.end method

.method public static getAccountType(I)Lcom/baidu/sapi2/utils/enums/AccountType;
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 36
    packed-switch p0, :pswitch_data_c

    .line 42
    sget-object v0, Lcom/baidu/sapi2/utils/enums/AccountType;->UNKNOWN:Lcom/baidu/sapi2/utils/enums/AccountType;

    :goto_5
    return-object v0

    .line 38
    :pswitch_6
    sget-object v0, Lcom/baidu/sapi2/utils/enums/AccountType;->NORMAL:Lcom/baidu/sapi2/utils/enums/AccountType;

    goto :goto_5

    .line 40
    :pswitch_9
    sget-object v0, Lcom/baidu/sapi2/utils/enums/AccountType;->INCOMPLETE_USER:Lcom/baidu/sapi2/utils/enums/AccountType;

    goto :goto_5

    .line 36
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/sapi2/utils/enums/AccountType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/baidu/sapi2/utils/enums/AccountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/utils/enums/AccountType;

    return-object v0
.end method

.method public static values()[Lcom/baidu/sapi2/utils/enums/AccountType;
    .registers 1

    .prologue
    .line 8
    sget-object v0, Lcom/baidu/sapi2/utils/enums/AccountType;->b:[Lcom/baidu/sapi2/utils/enums/AccountType;

    invoke-virtual {v0}, [Lcom/baidu/sapi2/utils/enums/AccountType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/sapi2/utils/enums/AccountType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcom/baidu/sapi2/utils/enums/AccountType;->a:I

    return v0
.end method

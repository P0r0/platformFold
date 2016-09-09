.class public final enum Lcn/egame/terminal/miniapay/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/egame/terminal/miniapay/c;

.field private static enum b:Lcn/egame/terminal/miniapay/c;

.field private static enum c:Lcn/egame/terminal/miniapay/c;

.field private static enum d:Lcn/egame/terminal/miniapay/c;


# instance fields
.field private e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcn/egame/terminal/miniapay/c;

    const-string v1, "CHINA_TELECOM"

    sget-object v2, Lcn/egame/terminal/miniapay/EgameMiniApay;->CHINA_TELECOM:[Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lcn/egame/terminal/miniapay/c;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcn/egame/terminal/miniapay/c;->a:Lcn/egame/terminal/miniapay/c;

    new-instance v0, Lcn/egame/terminal/miniapay/c;

    const-string v1, "CHINA_MOBILE"

    sget-object v2, Lcn/egame/terminal/miniapay/EgameMiniApay;->CHAIN_MOBILE:[Ljava/lang/String;

    invoke-direct {v0, v1, v4, v2}, Lcn/egame/terminal/miniapay/c;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcn/egame/terminal/miniapay/c;->b:Lcn/egame/terminal/miniapay/c;

    new-instance v0, Lcn/egame/terminal/miniapay/c;

    const-string v1, "CHINA_UNICOM"

    sget-object v2, Lcn/egame/terminal/miniapay/EgameMiniApay;->CHINA_UNICOM:[Ljava/lang/String;

    invoke-direct {v0, v1, v5, v2}, Lcn/egame/terminal/miniapay/c;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcn/egame/terminal/miniapay/c;->c:Lcn/egame/terminal/miniapay/c;

    new-instance v0, Lcn/egame/terminal/miniapay/c;

    const-string v1, "NOT_DEFINE"

    new-array v2, v3, [Ljava/lang/String;

    invoke-direct {v0, v1, v6, v2}, Lcn/egame/terminal/miniapay/c;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcn/egame/terminal/miniapay/c;->d:Lcn/egame/terminal/miniapay/c;

    const/4 v0, 0x4

    new-array v0, v0, [Lcn/egame/terminal/miniapay/c;

    sget-object v1, Lcn/egame/terminal/miniapay/c;->a:Lcn/egame/terminal/miniapay/c;

    aput-object v1, v0, v3

    sget-object v1, Lcn/egame/terminal/miniapay/c;->b:Lcn/egame/terminal/miniapay/c;

    aput-object v1, v0, v4

    sget-object v1, Lcn/egame/terminal/miniapay/c;->c:Lcn/egame/terminal/miniapay/c;

    aput-object v1, v0, v5

    sget-object v1, Lcn/egame/terminal/miniapay/c;->d:Lcn/egame/terminal/miniapay/c;

    aput-object v1, v0, v6

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    array-length v0, p3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcn/egame/terminal/miniapay/c;->e:[Ljava/lang/String;

    iget-object v0, p0, Lcn/egame/terminal/miniapay/c;->e:[Ljava/lang/String;

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/miniapay/c;
    .registers 8

    const/4 v0, 0x0

    sget-object v1, Lcn/egame/terminal/miniapay/c;->a:Lcn/egame/terminal/miniapay/c;

    iget-object v2, v1, Lcn/egame/terminal/miniapay/c;->e:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_1d

    aget-object v4, v2, v1

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    :cond_17
    sget-object v0, Lcn/egame/terminal/miniapay/c;->a:Lcn/egame/terminal/miniapay/c;

    :goto_19
    return-object v0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    sget-object v1, Lcn/egame/terminal/miniapay/c;->b:Lcn/egame/terminal/miniapay/c;

    iget-object v2, v1, Lcn/egame/terminal/miniapay/c;->e:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_23
    if-ge v1, v3, :cond_39

    aget-object v4, v2, v1

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    :cond_33
    sget-object v0, Lcn/egame/terminal/miniapay/c;->b:Lcn/egame/terminal/miniapay/c;

    goto :goto_19

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_39
    sget-object v1, Lcn/egame/terminal/miniapay/c;->c:Lcn/egame/terminal/miniapay/c;

    iget-object v2, v1, Lcn/egame/terminal/miniapay/c;->e:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_3f
    if-ge v1, v3, :cond_55

    aget-object v4, v2, v1

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    :cond_4f
    sget-object v0, Lcn/egame/terminal/miniapay/c;->c:Lcn/egame/terminal/miniapay/c;

    goto :goto_19

    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_55
    sget-object v1, Lcn/egame/terminal/miniapay/c;->a:Lcn/egame/terminal/miniapay/c;

    iget-object v2, v1, Lcn/egame/terminal/miniapay/c;->e:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_5b
    if-ge v1, v3, :cond_71

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6b

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6e

    :cond_6b
    sget-object v0, Lcn/egame/terminal/miniapay/c;->a:Lcn/egame/terminal/miniapay/c;

    goto :goto_19

    :cond_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    :cond_71
    sget-object v1, Lcn/egame/terminal/miniapay/c;->b:Lcn/egame/terminal/miniapay/c;

    iget-object v2, v1, Lcn/egame/terminal/miniapay/c;->e:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_77
    if-ge v1, v3, :cond_8d

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8a

    :cond_87
    sget-object v0, Lcn/egame/terminal/miniapay/c;->b:Lcn/egame/terminal/miniapay/c;

    goto :goto_19

    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    :cond_8d
    sget-object v1, Lcn/egame/terminal/miniapay/c;->c:Lcn/egame/terminal/miniapay/c;

    iget-object v1, v1, Lcn/egame/terminal/miniapay/c;->e:[Ljava/lang/String;

    array-length v2, v1

    :goto_92
    if-ge v0, v2, :cond_a9

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a2

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a6

    :cond_a2
    sget-object v0, Lcn/egame/terminal/miniapay/c;->c:Lcn/egame/terminal/miniapay/c;

    goto/16 :goto_19

    :cond_a6
    add-int/lit8 v0, v0, 0x1

    goto :goto_92

    :cond_a9
    sget-object v0, Lcn/egame/terminal/miniapay/c;->d:Lcn/egame/terminal/miniapay/c;

    goto/16 :goto_19
.end method

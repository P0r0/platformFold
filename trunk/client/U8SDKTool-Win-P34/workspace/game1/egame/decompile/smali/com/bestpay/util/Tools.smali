.class public Lcom/bestpay/util/Tools;
.super Ljava/lang/Object;
.source "Tools.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static string2Map(Ljava/lang/String;)Ljava/util/Hashtable;
    .registers 10
    .param p0, "orderParams"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 14
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 15
    .local v0, "paramsMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "&"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 16
    .local v1, "str1":[Ljava/lang/String;
    array-length v6, v1

    move v4, v5

    :goto_e
    if-lt v4, v6, :cond_11

    .line 24
    return-object v0

    .line 16
    :cond_11
    aget-object v2, v1, v4

    .line 17
    .local v2, "str2":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 18
    .local v3, "str3":[Ljava/lang/String;
    array-length v7, v3

    const/4 v8, 0x2

    if-ne v7, v8, :cond_28

    .line 19
    aget-object v7, v3, v5

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-virtual {v0, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :goto_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 21
    :cond_28
    aget-object v7, v3, v5

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25
.end method

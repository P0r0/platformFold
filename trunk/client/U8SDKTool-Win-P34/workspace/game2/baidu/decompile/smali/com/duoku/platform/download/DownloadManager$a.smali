.class Lcom/duoku/platform/download/DownloadManager$a;
.super Landroid/database/CursorWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1612
    const-class v0, Lcom/duoku/platform/download/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/duoku/platform/download/DownloadManager$a;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/net/Uri;)V
    .registers 3

    .prologue
    .line 1627
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1628
    iput-object p2, p0, Lcom/duoku/platform/download/DownloadManager$a;->b:Landroid/net/Uri;

    .line 1629
    return-void
.end method

.method private a(I)J
    .registers 4

    .prologue
    .line 1852
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadManager$a;->d(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_14

    .line 1861
    const-wide/16 v0, 0x0

    :goto_9
    return-wide v0

    .line 1855
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadManager$a;->c(I)J

    move-result-wide v0

    goto :goto_9

    .line 1858
    :sswitch_f
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadManager$a;->b(I)J

    move-result-wide v0

    goto :goto_9

    .line 1852
    :sswitch_data_14
    .sparse-switch
        0x4 -> :sswitch_f
        0x10 -> :sswitch_a
    .end sparse-switch
.end method

.method private a()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1776
    const-string v0, "destination"

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadManager$a;->d(Ljava/lang/String;)J

    move-result-wide v0

    .line 1777
    const-wide/16 v2, 0x4

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 1780
    const-string v0, "hint"

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadManager$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1796
    :goto_12
    return-object v0

    .line 1783
    :cond_13
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_31

    .line 1786
    const-string v0, "_data"

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadManager$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1787
    if-nez v0, :cond_23

    .line 1789
    const/4 v0, 0x0

    goto :goto_12

    .line 1791
    :cond_23
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 1795
    :cond_31
    const-string v0, "_id"

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadManager$a;->d(Ljava/lang/String;)J

    move-result-wide v0

    .line 1796
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadManager$a;->b:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1694
    # getter for: Lcom/duoku/platform/download/DownloadManager;->LONG_COLUMNS:Ljava/util/Set;
    invoke-static {}, Lcom/duoku/platform/download/DownloadManager;->access$1()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b(I)J
    .registers 4

    .prologue
    .line 1874
    packed-switch p1, :pswitch_data_12

    .line 1888
    const-wide/16 v0, 0x5

    :goto_5
    return-wide v0

    .line 1877
    :pswitch_6
    const-wide/16 v0, 0x1

    goto :goto_5

    .line 1880
    :pswitch_9
    const-wide/16 v0, 0x2

    goto :goto_5

    .line 1883
    :pswitch_c
    const-wide/16 v0, 0x3

    goto :goto_5

    .line 1885
    :pswitch_f
    const-wide/16 v0, 0x4

    goto :goto_5

    .line 1874
    :pswitch_data_12
    .packed-switch 0xc1
        :pswitch_f
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 1736
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadManager$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1738
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadManager$a;->c(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 1766
    :goto_e
    return-object v0

    .line 1740
    :cond_f
    const-string v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1742
    const-string v0, "title"

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadManager$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 1744
    :cond_1e
    const-string v0, "description"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1746
    const-string v0, "description"

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadManager$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 1748
    :cond_2d
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1750
    const-string v0, "uri"

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadManager$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 1752
    :cond_3c
    const-string v0, "media_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1754
    const-string v0, "mimetype"

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadManager$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 1756
    :cond_4b
    const-string v0, "mediaprovider_uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1758
    const-string v0, "mediaprovider_uri"

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadManager$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 1760
    :cond_5a
    const-string v0, "extra"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1762
    const-string v0, "entity"

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadManager$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 1765
    :cond_69
    sget-boolean v0, Lcom/duoku/platform/download/DownloadManager$a;->a:Z

    if-nez v0, :cond_7b

    const-string v0, "local_uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1766
    :cond_7b
    invoke-direct {p0}, Lcom/duoku/platform/download/DownloadManager$a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method private c(I)J
    .registers 4

    .prologue
    .line 1901
    const/16 v0, 0x190

    if-gt v0, p1, :cond_8

    const/16 v0, 0x1e8

    if-lt p1, v0, :cond_10

    .line 1903
    :cond_8
    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_12

    const/16 v0, 0x258

    if-ge p1, v0, :cond_12

    .line 1906
    :cond_10
    int-to-long v0, p1

    .line 1937
    :goto_11
    return-wide v0

    .line 1909
    :cond_12
    packed-switch p1, :pswitch_data_30

    .line 1937
    :pswitch_15
    const-wide/16 v0, 0x3e8

    goto :goto_11

    .line 1912
    :pswitch_18
    const-wide/16 v0, 0x3e9

    goto :goto_11

    .line 1916
    :pswitch_1b
    const-wide/16 v0, 0x3ea

    goto :goto_11

    .line 1919
    :pswitch_1e
    const-wide/16 v0, 0x3ec

    goto :goto_11

    .line 1922
    :pswitch_21
    const-wide/16 v0, 0x3ed

    goto :goto_11

    .line 1925
    :pswitch_24
    const-wide/16 v0, 0x3ee

    goto :goto_11

    .line 1928
    :pswitch_27
    const-wide/16 v0, 0x3ef

    goto :goto_11

    .line 1931
    :pswitch_2a
    const-wide/16 v0, 0x3f0

    goto :goto_11

    .line 1934
    :pswitch_2d
    const-wide/16 v0, 0x3f1

    goto :goto_11

    .line 1909
    :pswitch_data_30
    .packed-switch 0x1e8
        :pswitch_2d
        :pswitch_2a
        :pswitch_15
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1b
        :pswitch_1e
        :pswitch_15
        :pswitch_21
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method

.method private c(Ljava/lang/String;)J
    .registers 4

    .prologue
    .line 1808
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadManager$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1812
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadManager$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1840
    :goto_12
    return-wide v0

    .line 1815
    :cond_13
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1817
    const-string v0, "_id"

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadManager$a;->d(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_12

    .line 1819
    :cond_22
    const-string v0, "total_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1821
    const-string v0, "total_bytes"

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadManager$a;->d(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_12

    .line 1823
    :cond_31
    const-string v0, "status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1825
    const-string v0, "status"

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadManager$a;->d(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadManager$a;->d(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_12

    .line 1827
    :cond_46
    const-string v0, "reason"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1829
    const-string v0, "status"

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadManager$a;->d(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadManager$a;->a(I)J

    move-result-wide v0

    goto :goto_12

    .line 1831
    :cond_5a
    const-string v0, "bytes_so_far"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1833
    const-string v0, "current_bytes"

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadManager$a;->d(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_12

    .line 1835
    :cond_69
    const-string v0, "original_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 1837
    const-string v0, "status"

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadManager$a;->d(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_12

    .line 1839
    :cond_78
    sget-boolean v0, Lcom/duoku/platform/download/DownloadManager$a;->a:Z

    if-nez v0, :cond_8a

    const-string v0, "last_modified_timestamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1840
    :cond_8a
    const-string v0, "lastmod"

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadManager$a;->d(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_12
.end method

.method private d(I)I
    .registers 3

    .prologue
    .line 1974
    packed-switch p1, :pswitch_data_20

    .line 1992
    :pswitch_3
    sget-boolean v0, Lcom/duoku/platform/download/DownloadManager$a;->a:Z

    if-nez v0, :cond_1c

    invoke-static {p1}, Lcom/duoku/platform/download/Downloads;->isStatusError(I)Z

    move-result v0

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1977
    :pswitch_13
    const/4 v0, 0x1

    .line 1993
    :goto_14
    return v0

    .line 1980
    :pswitch_15
    const/4 v0, 0x2

    goto :goto_14

    .line 1986
    :pswitch_17
    const/4 v0, 0x4

    goto :goto_14

    .line 1989
    :pswitch_19
    const/16 v0, 0x8

    goto :goto_14

    .line 1993
    :cond_1c
    const/16 v0, 0x10

    goto :goto_14

    .line 1974
    nop

    :pswitch_data_20
    .packed-switch 0xbe
        :pswitch_13
        :pswitch_3
        :pswitch_15
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_19
    .end packed-switch
.end method

.method private d(Ljava/lang/String;)J
    .registers 4

    .prologue
    .line 1950
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1962
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBlob(I)[B
    .registers 3

    .prologue
    .line 1676
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getColumnCount()I
    .registers 2

    .prologue
    .line 1670
    # getter for: Lcom/duoku/platform/download/DownloadManager;->COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/duoku/platform/download/DownloadManager;->access$0()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 1634
    # getter for: Lcom/duoku/platform/download/DownloadManager;->COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/duoku/platform/download/DownloadManager;->access$0()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 1640
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/DownloadManager$a;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1641
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    .line 1643
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No such column: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1645
    :cond_1c
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 1651
    # getter for: Lcom/duoku/platform/download/DownloadManager;->COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/duoku/platform/download/DownloadManager;->access$0()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    .line 1652
    if-ltz p1, :cond_9

    if-lt p1, v0, :cond_2e

    .line 1654
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid column index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " columns exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1656
    :cond_2e
    # getter for: Lcom/duoku/platform/download/DownloadManager;->COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/duoku/platform/download/DownloadManager;->access$0()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1662
    # getter for: Lcom/duoku/platform/download/DownloadManager;->COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/duoku/platform/download/DownloadManager;->access$0()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1663
    # getter for: Lcom/duoku/platform/download/DownloadManager;->COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/duoku/platform/download/DownloadManager;->access$0()[Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/duoku/platform/download/DownloadManager;->COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/duoku/platform/download/DownloadManager;->access$0()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1664
    return-object v0
.end method

.method public getDouble(I)D
    .registers 4

    .prologue
    .line 1682
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/DownloadManager$a;->getLong(I)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 4

    .prologue
    .line 1700
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/DownloadManager$a;->getDouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getInt(I)I
    .registers 4

    .prologue
    .line 1706
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/DownloadManager$a;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .registers 4

    .prologue
    .line 1712
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/DownloadManager$a;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadManager$a;->c(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .registers 4

    .prologue
    .line 1718
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/DownloadManager$a;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1724
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/DownloadManager$a;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadManager$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

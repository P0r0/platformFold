.class public Lcom/duoku/platform/download/DownloadManager$Query;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Query"
.end annotation


# static fields
.field public static final ORDER_ASCENDING:I = 0x1

.field public static final ORDER_DESCENDING:I = 0x2


# instance fields
.field private extra:Ljava/lang/String;

.field private mIds:[J

.field private mOnlyIncludeVisibleInDownloadsUi:Z

.field private mOrderByColumn:Ljava/lang/String;

.field private mOrderDirection:I

.field private mStatusFlags:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    iput-object v0, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mIds:[J

    .line 717
    iput-object v0, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    .line 719
    const-string v0, "lastmod"

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    .line 721
    const/4 v0, 0x2

    iput v0, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mOrderDirection:I

    .line 723
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mOnlyIncludeVisibleInDownloadsUi:Z

    .line 698
    return-void
.end method

.method private joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 911
    const/4 v0, 0x1

    .line 912
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    .line 921
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 912
    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 914
    if-nez v1, :cond_21

    .line 916
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    :cond_21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    const/4 v0, 0x0

    move v1, v0

    goto :goto_b
.end method

.method private statusClause(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "status"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public orderBy(Ljava/lang/String;I)Lcom/duoku/platform/download/DownloadManager$Query;
    .registers 6

    .prologue
    .line 793
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1b

    .line 795
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid direction: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_1b
    const-string v0, "last_modified_timestamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 800
    const-string v0, "lastmod"

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    .line 814
    :goto_27
    iput p2, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mOrderDirection:I

    .line 815
    return-object p0

    .line 802
    :cond_2a
    const-string v0, "total_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 804
    const-string v0, "total_bytes"

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    goto :goto_27

    .line 806
    :cond_37
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 808
    const-string v0, "_id"

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    goto :goto_27

    .line 812
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot order by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 11

    .prologue
    const/4 v6, 0x1

    .line 831
    .line 832
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 833
    const/4 v0, 0x0

    .line 835
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mIds:[J

    if-eqz v2, :cond_1a

    .line 837
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mIds:[J

    invoke-static {v0}, Lcom/duoku/platform/download/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mIds:[J

    invoke-static {v0}, Lcom/duoku/platform/download/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v0

    .line 840
    :cond_1a
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadManager$Query;->extra:Ljava/lang/String;

    if-eqz v2, :cond_12a

    .line 842
    const-string v0, "( entity =? )"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    new-array v4, v6, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 845
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadManager$Query;->extra:Ljava/lang/String;

    aput-object v2, v4, v0

    .line 849
    :goto_2a
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    if-eqz v0, :cond_ed

    .line 851
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 852
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_48

    .line 854
    const-string v2, "="

    const/16 v3, 0xbe

    invoke-direct {p0, v2, v3}, Lcom/duoku/platform/download/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    :cond_48
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5d

    .line 858
    const-string v2, "="

    const/16 v3, 0xc0

    invoke-direct {p0, v2, v3}, Lcom/duoku/platform/download/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    :cond_5d
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_93

    .line 862
    const-string v2, "="

    const/16 v3, 0xc1

    invoke-direct {p0, v2, v3}, Lcom/duoku/platform/download/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    const-string v2, "="

    const/16 v3, 0xc2

    invoke-direct {p0, v2, v3}, Lcom/duoku/platform/download/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    const-string v2, "="

    const/16 v3, 0xc3

    invoke-direct {p0, v2, v3}, Lcom/duoku/platform/download/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    const-string v2, "="

    const/16 v3, 0xc4

    invoke-direct {p0, v2, v3}, Lcom/duoku/platform/download/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    :cond_93
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_a8

    .line 869
    const-string v2, "="

    const/16 v3, 0xc8

    invoke-direct {p0, v2, v3}, Lcom/duoku/platform/download/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    :cond_a8
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_e4

    .line 873
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ">="

    const/16 v5, 0x190

    invoke-direct {p0, v3, v5}, Lcom/duoku/platform/download/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<"

    const/16 v5, 0x258

    invoke-direct {p0, v3, v5}, Lcom/duoku/platform/download/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    :cond_e4
    const-string v2, " OR "

    invoke-direct {p0, v2, v0}, Lcom/duoku/platform/download/DownloadManager$Query;->joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    :cond_ed
    iget-boolean v0, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mOnlyIncludeVisibleInDownloadsUi:Z

    if-eqz v0, :cond_f6

    .line 881
    const-string v0, "is_visible_in_downloads_ui != \'0\'"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    :cond_f6
    const-string v0, "deleted != \'1\'"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    const-string v0, " AND "

    invoke-direct {p0, v0, v1}, Lcom/duoku/platform/download/DownloadManager$Query;->joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 889
    const-string v0, "ASC"

    .line 890
    iget v1, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mOrderDirection:I

    if-eq v1, v6, :cond_109

    .line 892
    const-string v0, "DESC"

    .line 894
    :cond_109
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    .line 896
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_12a
    move-object v4, v0

    goto/16 :goto_2a
.end method

.method public setFilterByExtra(Ljava/lang/String;)Lcom/duoku/platform/download/DownloadManager$Query;
    .registers 2

    .prologue
    .line 742
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadManager$Query;->extra:Ljava/lang/String;

    .line 743
    return-object p0
.end method

.method public varargs setFilterById([J)Lcom/duoku/platform/download/DownloadManager$Query;
    .registers 2

    .prologue
    .line 734
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mIds:[J

    .line 735
    return-object p0
.end method

.method public setFilterByStatus(I)Lcom/duoku/platform/download/DownloadManager$Query;
    .registers 3

    .prologue
    .line 756
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    .line 757
    return-object p0
.end method

.method public setOnlyIncludeVisibleInDownloadsUi(Z)Lcom/duoku/platform/download/DownloadManager$Query;
    .registers 2

    .prologue
    .line 774
    iput-boolean p1, p0, Lcom/duoku/platform/download/DownloadManager$Query;->mOnlyIncludeVisibleInDownloadsUi:Z

    .line 775
    return-object p0
.end method

.class public Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "TagItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TYPE_ITEM:I = 0x0

.field private static final TYPE_SEPARATOR:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDPostTag;",
            ">;"
        }
    .end annotation
.end field

.field private mFragment:Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;

.field private sectionHeader:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 7
    .param p1, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDPostTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "postTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmobisocial/longdan/LDProtocols$LDPostTag;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->mData:Ljava/util/ArrayList;

    .line 33
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->sectionHeader:Ljava/util/TreeSet;

    .line 37
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->mContext:Landroid/content/Context;

    .line 38
    new-instance v1, Lmobisocial/longdan/LDProtocols$LDPostTag;

    invoke-direct {v1}, Lmobisocial/longdan/LDProtocols$LDPostTag;-><init>()V

    .line 39
    .local v1, "tag":Lmobisocial/longdan/LDProtocols$LDPostTag;
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->mContext:Landroid/content/Context;

    const-string v3, "omp_tagItemAdapter_filter"

    invoke-static {p1, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmobisocial/longdan/LDProtocols$LDPostTag;->Tag:Ljava/lang/String;

    .line 40
    const-string v2, "String"

    iput-object v2, v1, Lmobisocial/longdan/LDProtocols$LDPostTag;->TagType:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->addSectionHeaderItem(Lmobisocial/longdan/LDProtocols$LDPostTag;)V

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2e
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_40

    .line 43
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobisocial/longdan/LDProtocols$LDPostTag;

    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->addItem(Lmobisocial/longdan/LDProtocols$LDPostTag;)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 45
    :cond_40
    return-void
.end method

.method private updateView(Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter$ViewHolder;I)V
    .registers 7
    .param p1, "holder"    # Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 122
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDPostTag;

    .line 123
    .local v1, "tag":Lmobisocial/longdan/LDProtocols$LDPostTag;
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    iget-object v3, v1, Lmobisocial/longdan/LDProtocols$LDPostTag;->Tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0, p2}, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->getItemViewType(I)I

    move-result v0

    .line 125
    .local v0, "rowType":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    .line 140
    :cond_16
    return-void
.end method


# virtual methods
.method public addItem(Lmobisocial/longdan/LDProtocols$LDPostTag;)V
    .registers 3
    .param p1, "item"    # Lmobisocial/longdan/LDProtocols$LDPostTag;

    .prologue
    .line 48
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->notifyDataSetChanged()V

    .line 50
    return-void
.end method

.method public addSectionHeaderItem(Lmobisocial/longdan/LDProtocols$LDPostTag;)V
    .registers 4
    .param p1, "item"    # Lmobisocial/longdan/LDProtocols$LDPostTag;

    .prologue
    .line 53
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->sectionHeader:Ljava/util/TreeSet;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->notifyDataSetChanged()V

    .line 56
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 80
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->sectionHeader:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 96
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter$ViewHolder;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;)V

    .line 97
    .local v0, "holder":Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->getItemViewType(I)I

    move-result v1

    .line 98
    .local v1, "rowType":I
    if-nez p2, :cond_73

    .line 99
    packed-switch v1, :pswitch_data_7a

    .line 113
    :goto_f
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    :goto_12
    invoke-direct {p0, v0, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->updateView(Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter$ViewHolder;I)V

    .line 118
    return-object p2

    .line 101
    :pswitch_16
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->mContext:Landroid/content/Context;

    const-string v4, "omp_filter_tag_item"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 102
    iput p1, v0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter$ViewHolder;->index:I

    move-object v2, p2

    .line 103
    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter$ViewHolder;->convertView:Landroid/view/ViewGroup;

    .line 104
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->mContext:Landroid/content/Context;

    const-string v3, "view_group_filter_tag"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter$ViewHolder;->backgroundView:Landroid/view/View;

    .line 105
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->mContext:Landroid/content/Context;

    const-string v3, "name"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    goto :goto_f

    .line 108
    :pswitch_4e
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->mContext:Landroid/content/Context;

    const-string v4, "omp_filter_tag_header"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 109
    iput p1, v0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter$ViewHolder;->index:I

    .line 110
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;->mContext:Landroid/content/Context;

    const-string v3, "text_header"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    goto :goto_f

    .line 115
    :cond_73
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter$ViewHolder;
    check-cast v0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter$ViewHolder;

    .restart local v0    # "holder":Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter$ViewHolder;
    goto :goto_12

    .line 99
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_16
        :pswitch_4e
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x2

    return v0
.end method

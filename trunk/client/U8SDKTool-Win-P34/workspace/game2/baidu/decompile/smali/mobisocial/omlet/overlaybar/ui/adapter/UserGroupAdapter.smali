.class public Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFragment:Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;

.field private mSelectedUser:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Landroid/content/Context;Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;)V
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "f"    # Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mData:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->sectionHeader:Ljava/util/TreeSet;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mSelectedUser:Ljava/util/ArrayList;

    .line 41
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mFragment:Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;Ljava/util/ArrayList;)V
    .registers 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "f"    # Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p3, "selectedUser":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mData:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->sectionHeader:Ljava/util/TreeSet;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mSelectedUser:Ljava/util/ArrayList;

    .line 47
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mFragment:Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;

    .line 49
    iput-object p3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mSelectedUser:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;)Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mFragment:Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;

    return-object v0
.end method

.method static synthetic access$100(Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;I)V
    .registers 3
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;
    .param p1, "x1"    # Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;
    .param p2, "x2"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->setSelectButton(Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;I)V

    return-void
.end method

.method private setSelectButton(Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;I)V
    .registers 6
    .param p1, "holder"    # Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;
    .param p2, "userPosition"    # I

    .prologue
    .line 165
    invoke-virtual {p0, p2}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 166
    .local v0, "user":Ljava/lang/Object;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mSelectedUser:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 167
    iget-object v1, p1, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;->selectButton:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 171
    :goto_12
    return-void

    .line 169
    :cond_13
    iget-object v1, p1, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;->selectButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_12
.end method

.method private updateView(Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;I)V
    .registers 9
    .param p1, "holder"    # Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;
    .param p2, "userPosition"    # I

    .prologue
    .line 133
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 134
    .local v2, "user":Ljava/lang/String;
    iget-object v3, p1, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {p0, p2}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->getItemViewType(I)I

    move-result v1

    .line 136
    .local v1, "rowType":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_15

    .line 162
    :goto_14
    return-void

    .line 138
    :cond_15
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mContext:Landroid/content/Context;

    const-string v5, "omp_btn_loadingheadpic_onpost"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v3, p1, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;->profileImageView:Landroid/widget/ImageView;

    new-instance v4, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;

    invoke-direct {v4}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;-><init>()V

    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 140
    iget-object v3, p1, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;->profileImageView:Landroid/widget/ImageView;

    new-instance v4, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$1;

    invoke-direct {v4, p0, p2}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$1;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-direct {p0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->setSelectButton(Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;I)V

    .line 149
    iget-object v3, p1, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;->selectButton:Landroid/widget/ImageButton;

    new-instance v4, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$2;

    invoke-direct {v4, p0, p2, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$2;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;ILmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_14
.end method


# virtual methods
.method public addItem(Ljava/lang/String;)V
    .registers 3
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->notifyDataSetChanged()V

    .line 55
    return-void
.end method

.method public addSectionHeaderItem(Ljava/lang/String;)V
    .registers 4
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->sectionHeader:Ljava/util/TreeSet;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->notifyDataSetChanged()V

    .line 61
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 85
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->sectionHeader:Ljava/util/TreeSet;

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

    .line 105
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;)V

    .line 106
    .local v0, "holder":Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->getItemViewType(I)I

    move-result v1

    .line 107
    .local v1, "rowType":I
    if-nez p2, :cond_94

    .line 108
    packed-switch v1, :pswitch_data_9c

    .line 124
    :goto_f
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 128
    :goto_12
    invoke-direct {p0, v0, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->updateView(Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;I)V

    .line 129
    return-object p2

    .line 110
    :pswitch_16
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mContext:Landroid/content/Context;

    const-string v4, "omp_select_user_item"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 111
    iput p1, v0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;->index:I

    move-object v2, p2

    .line 112
    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;->convertView:Landroid/view/ViewGroup;

    .line 113
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mContext:Landroid/content/Context;

    const-string v3, "profile_icon"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;->profileImageView:Landroid/widget/ImageView;

    .line 114
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mContext:Landroid/content/Context;

    const-string v3, "name"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 115
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mContext:Landroid/content/Context;

    const-string v3, "select_user_view_group"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;->selectView:Landroid/view/View;

    .line 116
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mContext:Landroid/content/Context;

    const-string v3, "select_user_button"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;->selectButton:Landroid/widget/ImageButton;

    goto :goto_f

    .line 119
    :pswitch_6e
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mContext:Landroid/content/Context;

    const-string v4, "omp_select_user_header"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 120
    iput p1, v0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;->index:I

    .line 121
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mContext:Landroid/content/Context;

    const-string v3, "text_header"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    goto/16 :goto_f

    .line 126
    :cond_94
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;
    check-cast v0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;

    .restart local v0    # "holder":Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;
    goto/16 :goto_12

    .line 108
    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_16
        :pswitch_6e
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x2

    return v0
.end method

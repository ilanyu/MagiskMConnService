.class public final Lcn/kuaipan/android/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final a:Ljava/lang/String; = "true"

.field private static final b:Ljava/lang/String; = "false"


# instance fields
.field private final c:Lcn/kuaipan/android/utils/s;

.field private final d:Ljava/io/Reader;

.field private e:Z

.field private final f:[C

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/kuaipan/android/utils/g;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcn/kuaipan/android/utils/h;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Lcn/kuaipan/android/utils/s;

    invoke-direct {v0}, Lcn/kuaipan/android/utils/s;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/utils/f;->c:Lcn/kuaipan/android/utils/s;

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcn/kuaipan/android/utils/f;->e:Z

    const/16 v1, 0x400

    .line 200
    new-array v1, v1, [C

    iput-object v1, p0, Lcn/kuaipan/android/utils/f;->f:[C

    .line 201
    iput v0, p0, Lcn/kuaipan/android/utils/f;->g:I

    .line 202
    iput v0, p0, Lcn/kuaipan/android/utils/f;->h:I

    const/4 v1, 0x1

    .line 207
    iput v1, p0, Lcn/kuaipan/android/utils/f;->i:I

    .line 208
    iput v1, p0, Lcn/kuaipan/android/utils/f;->j:I

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/kuaipan/android/utils/f;->k:Ljava/util/List;

    .line 212
    sget-object v1, Lcn/kuaipan/android/utils/g;->f:Lcn/kuaipan/android/utils/g;

    invoke-direct {p0, v1}, Lcn/kuaipan/android/utils/f;->a(Lcn/kuaipan/android/utils/g;)V

    .line 233
    iput-boolean v0, p0, Lcn/kuaipan/android/utils/f;->q:Z

    if-eqz p1, :cond_2f

    .line 242
    iput-object p1, p0, Lcn/kuaipan/android/utils/f;->d:Ljava/io/Reader;

    return-void

    .line 240
    :cond_2f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "in == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private A()Lcn/kuaipan/android/utils/h;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1058
    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/f;->d(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/utils/f;->n:Ljava/lang/String;

    .line 1059
    iget v0, p0, Lcn/kuaipan/android/utils/f;->p:I

    if-eqz v0, :cond_1d

    .line 1062
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->B()Lcn/kuaipan/android/utils/h;

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    .line 1063
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    sget-object v1, Lcn/kuaipan/android/utils/h;->f:Lcn/kuaipan/android/utils/h;

    if-ne v0, v1, :cond_1a

    .line 1064
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->x()V

    .line 1066
    :cond_1a
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    return-object v0

    :cond_1d
    const-string v0, "Expected literal value"

    .line 1060
    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/f;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private B()Lcn/kuaipan/android/utils/h;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1073
    iget v0, p0, Lcn/kuaipan/android/utils/f;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 1075
    sget-object v0, Lcn/kuaipan/android/utils/h;->f:Lcn/kuaipan/android/utils/h;

    return-object v0

    .line 1076
    :cond_8
    iget v0, p0, Lcn/kuaipan/android/utils/f;->p:I

    const/16 v1, 0x55

    const/16 v2, 0x75

    const/16 v3, 0x4c

    const/16 v4, 0x6c

    const/4 v5, 0x4

    if-ne v0, v5, :cond_6c

    const/16 v0, 0x6e

    iget-object v6, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v7, p0, Lcn/kuaipan/android/utils/f;->o:I

    aget-char v6, v6, v7

    if-eq v0, v6, :cond_29

    const/16 v0, 0x4e

    iget-object v6, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v7, p0, Lcn/kuaipan/android/utils/f;->o:I

    aget-char v6, v6, v7

    if-ne v0, v6, :cond_6c

    :cond_29
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v6, p0, Lcn/kuaipan/android/utils/f;->o:I

    add-int/lit8 v6, v6, 0x1

    aget-char v0, v0, v6

    if-eq v2, v0, :cond_3d

    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v6, p0, Lcn/kuaipan/android/utils/f;->o:I

    add-int/lit8 v6, v6, 0x1

    aget-char v0, v0, v6

    if-ne v1, v0, :cond_6c

    :cond_3d
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v6, p0, Lcn/kuaipan/android/utils/f;->o:I

    add-int/lit8 v6, v6, 0x2

    aget-char v0, v0, v6

    if-eq v4, v0, :cond_51

    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v6, p0, Lcn/kuaipan/android/utils/f;->o:I

    add-int/lit8 v6, v6, 0x2

    aget-char v0, v0, v6

    if-ne v3, v0, :cond_6c

    :cond_51
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v6, p0, Lcn/kuaipan/android/utils/f;->o:I

    add-int/lit8 v6, v6, 0x3

    aget-char v0, v0, v6

    if-eq v4, v0, :cond_65

    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v6, p0, Lcn/kuaipan/android/utils/f;->o:I

    add-int/lit8 v6, v6, 0x3

    aget-char v0, v0, v6

    if-ne v3, v0, :cond_6c

    :cond_65
    const-string v0, "null"

    .line 1080
    iput-object v0, p0, Lcn/kuaipan/android/utils/f;->n:Ljava/lang/String;

    .line 1081
    sget-object v0, Lcn/kuaipan/android/utils/h;->i:Lcn/kuaipan/android/utils/h;

    return-object v0

    .line 1082
    :cond_6c
    iget v0, p0, Lcn/kuaipan/android/utils/f;->p:I

    const/16 v6, 0x45

    const/16 v7, 0x65

    if-ne v0, v5, :cond_cf

    const/16 v0, 0x74

    iget-object v8, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v9, p0, Lcn/kuaipan/android/utils/f;->o:I

    aget-char v8, v8, v9

    if-eq v0, v8, :cond_88

    const/16 v0, 0x54

    iget-object v8, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v9, p0, Lcn/kuaipan/android/utils/f;->o:I

    aget-char v8, v8, v9

    if-ne v0, v8, :cond_cf

    :cond_88
    const/16 v0, 0x72

    iget-object v8, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v9, p0, Lcn/kuaipan/android/utils/f;->o:I

    add-int/lit8 v9, v9, 0x1

    aget-char v8, v8, v9

    if-eq v0, v8, :cond_a0

    const/16 v0, 0x52

    iget-object v8, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v9, p0, Lcn/kuaipan/android/utils/f;->o:I

    add-int/lit8 v9, v9, 0x1

    aget-char v8, v8, v9

    if-ne v0, v8, :cond_cf

    :cond_a0
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v8, p0, Lcn/kuaipan/android/utils/f;->o:I

    add-int/lit8 v8, v8, 0x2

    aget-char v0, v0, v8

    if-eq v2, v0, :cond_b4

    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v2, p0, Lcn/kuaipan/android/utils/f;->o:I

    add-int/lit8 v2, v2, 0x2

    aget-char v0, v0, v2

    if-ne v1, v0, :cond_cf

    :cond_b4
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v1, p0, Lcn/kuaipan/android/utils/f;->o:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-eq v7, v0, :cond_c8

    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v1, p0, Lcn/kuaipan/android/utils/f;->o:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v6, v0, :cond_cf

    :cond_c8
    const-string v0, "true"

    .line 1086
    iput-object v0, p0, Lcn/kuaipan/android/utils/f;->n:Ljava/lang/String;

    .line 1087
    sget-object v0, Lcn/kuaipan/android/utils/h;->h:Lcn/kuaipan/android/utils/h;

    return-object v0

    .line 1088
    :cond_cf
    iget v0, p0, Lcn/kuaipan/android/utils/f;->p:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_145

    const/16 v0, 0x66

    iget-object v1, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v2, p0, Lcn/kuaipan/android/utils/f;->o:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_e8

    const/16 v0, 0x46

    iget-object v1, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v2, p0, Lcn/kuaipan/android/utils/f;->o:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_145

    :cond_e8
    const/16 v0, 0x61

    iget-object v1, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v2, p0, Lcn/kuaipan/android/utils/f;->o:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_100

    const/16 v0, 0x41

    iget-object v1, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v2, p0, Lcn/kuaipan/android/utils/f;->o:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_145

    :cond_100
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v1, p0, Lcn/kuaipan/android/utils/f;->o:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-eq v4, v0, :cond_114

    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v1, p0, Lcn/kuaipan/android/utils/f;->o:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_145

    :cond_114
    const/16 v0, 0x73

    iget-object v1, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v2, p0, Lcn/kuaipan/android/utils/f;->o:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_12c

    const/16 v0, 0x53

    iget-object v1, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v2, p0, Lcn/kuaipan/android/utils/f;->o:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_145

    :cond_12c
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v1, p0, Lcn/kuaipan/android/utils/f;->o:I

    add-int/2addr v1, v5

    aget-char v0, v0, v1

    if-eq v7, v0, :cond_13e

    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v1, p0, Lcn/kuaipan/android/utils/f;->o:I

    add-int/2addr v1, v5

    aget-char v0, v0, v1

    if-ne v6, v0, :cond_145

    :cond_13e
    const-string v0, "false"

    .line 1093
    iput-object v0, p0, Lcn/kuaipan/android/utils/f;->n:Ljava/lang/String;

    .line 1094
    sget-object v0, Lcn/kuaipan/android/utils/h;->h:Lcn/kuaipan/android/utils/h;

    return-object v0

    .line 1096
    :cond_145
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->c:Lcn/kuaipan/android/utils/s;

    iget-object v1, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v2, p0, Lcn/kuaipan/android/utils/f;->o:I

    iget v3, p0, Lcn/kuaipan/android/utils/f;->p:I

    invoke-virtual {v0, v1, v2, v3}, Lcn/kuaipan/android/utils/s;->a([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/utils/f;->n:Ljava/lang/String;

    .line 1097
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v1, p0, Lcn/kuaipan/android/utils/f;->o:I

    iget v2, p0, Lcn/kuaipan/android/utils/f;->p:I

    invoke-direct {p0, v0, v1, v2}, Lcn/kuaipan/android/utils/f;->a([CII)Lcn/kuaipan/android/utils/h;

    move-result-object v0

    return-object v0
.end method

.method private C()Ljava/lang/CharSequence;
    .registers 6

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1166
    iget v1, p0, Lcn/kuaipan/android/utils/f;->g:I

    const/16 v2, 0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1167
    iget-object v3, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v4, p0, Lcn/kuaipan/android/utils/f;->g:I

    sub-int/2addr v4, v1

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1168
    iget v1, p0, Lcn/kuaipan/android/utils/f;->h:I

    iget v3, p0, Lcn/kuaipan/android/utils/f;->g:I

    sub-int/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1169
    iget-object v2, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v3, p0, Lcn/kuaipan/android/utils/f;->g:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private a([CII)Lcn/kuaipan/android/utils/h;
    .registers 11

    .line 1109
    aget-char v0, p1, p2

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_e

    add-int/lit8 v0, p2, 0x1

    .line 1112
    aget-char v2, p1, v0

    move v6, v2

    move v2, v0

    move v0, v6

    goto :goto_f

    :cond_e
    move v2, p2

    :goto_f
    const/16 v3, 0x39

    const/16 v4, 0x30

    if-ne v0, v4, :cond_1a

    add-int/lit8 v2, v2, 0x1

    .line 1116
    aget-char v0, p1, v2

    goto :goto_2d

    :cond_1a
    const/16 v5, 0x31

    if-lt v0, v5, :cond_71

    if-gt v0, v3, :cond_71

    add-int/lit8 v2, v2, 0x1

    .line 1118
    aget-char v0, p1, v2

    :goto_24
    if-lt v0, v4, :cond_2d

    if-gt v0, v3, :cond_2d

    add-int/lit8 v2, v2, 0x1

    .line 1120
    aget-char v0, p1, v2

    goto :goto_24

    :cond_2d
    :goto_2d
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_3e

    add-int/lit8 v2, v2, 0x1

    .line 1127
    aget-char v0, p1, v2

    :goto_35
    if-lt v0, v4, :cond_3e

    if-gt v0, v3, :cond_3e

    add-int/lit8 v2, v2, 0x1

    .line 1129
    aget-char v0, p1, v2

    goto :goto_35

    :cond_3e
    const/16 v5, 0x65

    if-eq v0, v5, :cond_46

    const/16 v5, 0x45

    if-ne v0, v5, :cond_65

    :cond_46
    add-int/lit8 v2, v2, 0x1

    .line 1134
    aget-char v0, p1, v2

    const/16 v5, 0x2b

    if-eq v0, v5, :cond_50

    if-ne v0, v1, :cond_54

    :cond_50
    add-int/lit8 v2, v2, 0x1

    .line 1136
    aget-char v0, p1, v2

    :cond_54
    if-lt v0, v4, :cond_6e

    if-gt v0, v3, :cond_6e

    add-int/lit8 v2, v2, 0x1

    .line 1139
    aget-char v0, p1, v2

    :goto_5c
    if-lt v0, v4, :cond_65

    if-gt v0, v3, :cond_65

    add-int/lit8 v2, v2, 0x1

    .line 1141
    aget-char v0, p1, v2

    goto :goto_5c

    :cond_65
    add-int/2addr p2, p3

    if-ne v2, p2, :cond_6b

    .line 1149
    sget-object p1, Lcn/kuaipan/android/utils/h;->g:Lcn/kuaipan/android/utils/h;

    return-object p1

    .line 1151
    :cond_6b
    sget-object p1, Lcn/kuaipan/android/utils/h;->f:Lcn/kuaipan/android/utils/h;

    return-object p1

    .line 1144
    :cond_6e
    sget-object p1, Lcn/kuaipan/android/utils/h;->f:Lcn/kuaipan/android/utils/h;

    return-object p1

    .line 1123
    :cond_71
    sget-object p1, Lcn/kuaipan/android/utils/h;->f:Lcn/kuaipan/android/utils/h;

    return-object p1
.end method

.method private a(C)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 886
    :goto_1
    iget v1, p0, Lcn/kuaipan/android/utils/f;->g:I

    .line 887
    :cond_3
    :goto_3
    iget v2, p0, Lcn/kuaipan/android/utils/f;->g:I

    iget v3, p0, Lcn/kuaipan/android/utils/f;->h:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_58

    .line 888
    iget-object v2, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v3, p0, Lcn/kuaipan/android/utils/f;->g:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcn/kuaipan/android/utils/f;->g:I

    aget-char v2, v2, v3

    if-ne v2, p1, :cond_3a

    .line 891
    iget-boolean p1, p0, Lcn/kuaipan/android/utils/f;->q:Z

    if-eqz p1, :cond_1d

    const-string p1, "skipped!"

    return-object p1

    :cond_1d
    if-nez v0, :cond_2c

    .line 894
    iget-object p1, p0, Lcn/kuaipan/android/utils/f;->c:Lcn/kuaipan/android/utils/s;

    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v2, p0, Lcn/kuaipan/android/utils/f;->g:I

    sub-int/2addr v2, v1

    sub-int/2addr v2, v4

    invoke-virtual {p1, v0, v1, v2}, Lcn/kuaipan/android/utils/s;->a([CII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 896
    :cond_2c
    iget-object p1, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v2, p0, Lcn/kuaipan/android/utils/f;->g:I

    sub-int/2addr v2, v1

    sub-int/2addr v2, v4

    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 897
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3a
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_3

    if-nez v0, :cond_45

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 904
    :cond_45
    iget-object v2, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v3, p0, Lcn/kuaipan/android/utils/f;->g:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 905
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->z()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 906
    iget v1, p0, Lcn/kuaipan/android/utils/f;->g:I

    goto :goto_3

    :cond_58
    if-nez v0, :cond_5f

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    :cond_5f
    iget-object v2, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v3, p0, Lcn/kuaipan/android/utils/f;->g:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 914
    invoke-direct {p0, v4}, Lcn/kuaipan/android/utils/f;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6e

    goto :goto_1

    :cond_6e
    const-string p1, "Unterminated string"

    .line 916
    invoke-direct {p0, p1}, Lcn/kuaipan/android/utils/f;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private a(Lcn/kuaipan/android/utils/g;)V
    .registers 3

    .line 579
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcn/kuaipan/android/utils/h;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->g()Lcn/kuaipan/android/utils/h;

    .line 313
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    if-ne v0, p1, :cond_b

    .line 316
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->p()Lcn/kuaipan/android/utils/h;

    return-void

    .line 314
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->g()Lcn/kuaipan/android/utils/h;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 727
    :goto_2
    iget v2, p0, Lcn/kuaipan/android/utils/f;->g:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1f

    .line 728
    iget-object v2, p0, Lcn/kuaipan/android/utils/f;->f:[C

    aget-char v2, v2, v1

    const/16 v4, 0xa

    if-ne v2, v4, :cond_17

    .line 729
    iget v2, p0, Lcn/kuaipan/android/utils/f;->i:I

    add-int/2addr v2, v3

    iput v2, p0, Lcn/kuaipan/android/utils/f;->i:I

    .line 730
    iput v3, p0, Lcn/kuaipan/android/utils/f;->j:I

    goto :goto_1c

    .line 732
    :cond_17
    iget v2, p0, Lcn/kuaipan/android/utils/f;->j:I

    add-int/2addr v2, v3

    iput v2, p0, Lcn/kuaipan/android/utils/f;->j:I

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 736
    :cond_1f
    iget v1, p0, Lcn/kuaipan/android/utils/f;->h:I

    iget v2, p0, Lcn/kuaipan/android/utils/f;->g:I

    if-eq v1, v2, :cond_38

    .line 737
    iget v1, p0, Lcn/kuaipan/android/utils/f;->h:I

    iget v2, p0, Lcn/kuaipan/android/utils/f;->g:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcn/kuaipan/android/utils/f;->h:I

    .line 738
    iget-object v1, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v2, p0, Lcn/kuaipan/android/utils/f;->g:I

    iget-object v4, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v5, p0, Lcn/kuaipan/android/utils/f;->h:I

    invoke-static {v1, v2, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3a

    .line 740
    :cond_38
    iput v0, p0, Lcn/kuaipan/android/utils/f;->h:I

    .line 743
    :goto_3a
    iput v0, p0, Lcn/kuaipan/android/utils/f;->g:I

    .line 745
    :cond_3c
    iget-object v1, p0, Lcn/kuaipan/android/utils/f;->d:Ljava/io/Reader;

    iget-object v2, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v4, p0, Lcn/kuaipan/android/utils/f;->h:I

    iget-object v5, p0, Lcn/kuaipan/android/utils/f;->f:[C

    array-length v5, v5

    iget v6, p0, Lcn/kuaipan/android/utils/f;->h:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_78

    .line 746
    iget v2, p0, Lcn/kuaipan/android/utils/f;->h:I

    add-int/2addr v2, v1

    iput v2, p0, Lcn/kuaipan/android/utils/f;->h:I

    .line 750
    iget v1, p0, Lcn/kuaipan/android/utils/f;->i:I

    if-ne v1, v3, :cond_73

    iget v1, p0, Lcn/kuaipan/android/utils/f;->j:I

    if-ne v1, v3, :cond_73

    iget v1, p0, Lcn/kuaipan/android/utils/f;->h:I

    if-lez v1, :cond_73

    iget-object v1, p0, Lcn/kuaipan/android/utils/f;->f:[C

    aget-char v1, v1, v0

    const v2, 0xfeff

    if-ne v1, v2, :cond_73

    .line 752
    iget v1, p0, Lcn/kuaipan/android/utils/f;->g:I

    add-int/2addr v1, v3

    iput v1, p0, Lcn/kuaipan/android/utils/f;->g:I

    .line 753
    iget v1, p0, Lcn/kuaipan/android/utils/f;->j:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcn/kuaipan/android/utils/f;->j:I

    .line 756
    :cond_73
    iget v1, p0, Lcn/kuaipan/android/utils/f;->h:I

    if-lt v1, p1, :cond_3c

    return v3

    :cond_78
    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 861
    :goto_0
    iget v0, p0, Lcn/kuaipan/android/utils/f;->g:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcn/kuaipan/android/utils/f;->h:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    return v2

    .line 862
    :cond_18
    :goto_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v2, v0, :cond_35

    .line 863
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v3, p0, Lcn/kuaipan/android/utils/f;->g:I

    add-int/2addr v3, v2

    aget-char v0, v0, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v0, v3, :cond_32

    .line 861
    iget v0, p0, Lcn/kuaipan/android/utils/f;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/kuaipan/android/utils/f;->g:I

    goto :goto_0

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_35
    return v1
.end method

.method private b(Z)Lcn/kuaipan/android/utils/h;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x5d

    const/16 v1, 0x3b

    const/16 v2, 0x2c

    if-eqz p1, :cond_e

    .line 591
    sget-object v3, Lcn/kuaipan/android/utils/g;->b:Lcn/kuaipan/android/utils/g;

    invoke-direct {p0, v3}, Lcn/kuaipan/android/utils/f;->b(Lcn/kuaipan/android/utils/g;)V

    goto :goto_2a

    .line 594
    :cond_e
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->w()I

    move-result v3

    if-eq v3, v2, :cond_2a

    if-eq v3, v1, :cond_27

    if-ne v3, v0, :cond_20

    .line 596
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->r()Lcn/kuaipan/android/utils/g;

    .line 597
    sget-object p1, Lcn/kuaipan/android/utils/h;->b:Lcn/kuaipan/android/utils/h;

    iput-object p1, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    return-object p1

    :cond_20
    const-string p1, "Unterminated array"

    .line 603
    invoke-direct {p0, p1}, Lcn/kuaipan/android/utils/f;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 599
    :cond_27
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->x()V

    .line 607
    :cond_2a
    :goto_2a
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->w()I

    move-result v3

    if-eq v3, v2, :cond_49

    if-eq v3, v1, :cond_49

    if-eq v3, v0, :cond_3f

    .line 622
    iget p1, p0, Lcn/kuaipan/android/utils/f;->g:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcn/kuaipan/android/utils/f;->g:I

    .line 623
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->t()Lcn/kuaipan/android/utils/h;

    move-result-object p1

    return-object p1

    :cond_3f
    if-eqz p1, :cond_49

    .line 610
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->r()Lcn/kuaipan/android/utils/g;

    .line 611
    sget-object p1, Lcn/kuaipan/android/utils/h;->b:Lcn/kuaipan/android/utils/h;

    iput-object p1, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    return-object p1

    .line 617
    :cond_49
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->x()V

    .line 618
    iget p1, p0, Lcn/kuaipan/android/utils/f;->g:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcn/kuaipan/android/utils/f;->g:I

    const-string p1, "null"

    .line 619
    iput-object p1, p0, Lcn/kuaipan/android/utils/f;->n:Ljava/lang/String;

    .line 620
    sget-object p1, Lcn/kuaipan/android/utils/h;->i:Lcn/kuaipan/android/utils/h;

    iput-object p1, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/io/IOException;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1160
    new-instance v0, Lcn/kuaipan/android/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at line "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->u()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " column "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->v()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcn/kuaipan/android/utils/j;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lcn/kuaipan/android/utils/g;)V
    .registers 4

    .line 586
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->k:Ljava/util/List;

    iget-object v1, p0, Lcn/kuaipan/android/utils/f;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private c(Z)Lcn/kuaipan/android/utils/h;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7d

    if-eqz p1, :cond_19

    .line 635
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->w()I

    move-result p1

    if-eq p1, v0, :cond_11

    .line 640
    iget p1, p0, Lcn/kuaipan/android/utils/f;->g:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcn/kuaipan/android/utils/f;->g:I

    goto :goto_36

    .line 637
    :cond_11
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->r()Lcn/kuaipan/android/utils/g;

    .line 638
    sget-object p1, Lcn/kuaipan/android/utils/h;->d:Lcn/kuaipan/android/utils/h;

    iput-object p1, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    return-object p1

    .line 643
    :cond_19
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->w()I

    move-result p1

    const/16 v1, 0x2c

    if-eq p1, v1, :cond_36

    const/16 v1, 0x3b

    if-eq p1, v1, :cond_36

    if-ne p1, v0, :cond_2f

    .line 645
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->r()Lcn/kuaipan/android/utils/g;

    .line 646
    sget-object p1, Lcn/kuaipan/android/utils/h;->d:Lcn/kuaipan/android/utils/h;

    iput-object p1, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    return-object p1

    :cond_2f
    const-string p1, "Unterminated object"

    .line 651
    invoke-direct {p0, p1}, Lcn/kuaipan/android/utils/f;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 656
    :cond_36
    :goto_36
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->w()I

    move-result p1

    const/16 v0, 0x22

    if-eq p1, v0, :cond_65

    const/16 v0, 0x27

    if-eq p1, v0, :cond_62

    .line 664
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->x()V

    .line 665
    iget p1, p0, Lcn/kuaipan/android/utils/f;->g:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcn/kuaipan/android/utils/f;->g:I

    const/4 p1, 0x0

    .line 666
    invoke-direct {p0, p1}, Lcn/kuaipan/android/utils/f;->d(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/kuaipan/android/utils/f;->m:Ljava/lang/String;

    .line 667
    iget-object p1, p0, Lcn/kuaipan/android/utils/f;->m:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5b

    goto :goto_6c

    :cond_5b
    const-string p1, "Expected name"

    .line 668
    invoke-direct {p0, p1}, Lcn/kuaipan/android/utils/f;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 659
    :cond_62
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->x()V

    :cond_65
    int-to-char p1, p1

    .line 661
    invoke-direct {p0, p1}, Lcn/kuaipan/android/utils/f;->a(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/kuaipan/android/utils/f;->m:Ljava/lang/String;

    .line 672
    :goto_6c
    sget-object p1, Lcn/kuaipan/android/utils/g;->d:Lcn/kuaipan/android/utils/g;

    invoke-direct {p0, p1}, Lcn/kuaipan/android/utils/f;->b(Lcn/kuaipan/android/utils/g;)V

    .line 673
    sget-object p1, Lcn/kuaipan/android/utils/h;->e:Lcn/kuaipan/android/utils/h;

    iput-object p1, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    return-object p1
.end method

.method private d(Z)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 929
    iput v0, p0, Lcn/kuaipan/android/utils/f;->o:I

    const/4 v0, 0x0

    .line 930
    iput v0, p0, Lcn/kuaipan/android/utils/f;->p:I

    const/4 v1, 0x0

    move-object v3, v1

    :cond_8
    const/4 v2, 0x0

    .line 934
    :goto_9
    iget v4, p0, Lcn/kuaipan/android/utils/f;->g:I

    add-int/2addr v4, v2

    iget v5, p0, Lcn/kuaipan/android/utils/f;->h:I

    if-ge v4, v5, :cond_21

    .line 935
    iget-object v4, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v5, p0, Lcn/kuaipan/android/utils/f;->g:I

    add-int/2addr v5, v2

    aget-char v4, v4, v5

    sparse-switch v4, :sswitch_data_8a

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 941
    :sswitch_1d
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->x()V

    goto :goto_35

    .line 962
    :cond_21
    iget-object v4, p0, Lcn/kuaipan/android/utils/f;->f:[C

    array-length v4, v4

    if-ge v2, v4, :cond_37

    add-int/lit8 v4, v2, 0x1

    .line 963
    invoke-direct {p0, v4}, Lcn/kuaipan/android/utils/f;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    goto :goto_9

    .line 966
    :cond_2f
    iget-object v4, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v5, p0, Lcn/kuaipan/android/utils/f;->h:I

    aput-char v0, v4, v5

    :goto_35
    :sswitch_35
    move v0, v2

    goto :goto_56

    :cond_37
    if-nez v3, :cond_3e

    .line 974
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 976
    :cond_3e
    iget-object v4, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v5, p0, Lcn/kuaipan/android/utils/f;->g:I

    invoke-virtual {v3, v4, v5, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 977
    iget v4, p0, Lcn/kuaipan/android/utils/f;->p:I

    add-int/2addr v4, v2

    iput v4, p0, Lcn/kuaipan/android/utils/f;->p:I

    .line 978
    iget v4, p0, Lcn/kuaipan/android/utils/f;->g:I

    add-int/2addr v4, v2

    iput v4, p0, Lcn/kuaipan/android/utils/f;->g:I

    const/4 v2, 0x1

    .line 980
    invoke-direct {p0, v2}, Lcn/kuaipan/android/utils/f;->a(I)Z

    move-result v2

    if-nez v2, :cond_8

    :goto_56
    if-eqz p1, :cond_5f

    if-nez v3, :cond_5f

    .line 987
    iget p1, p0, Lcn/kuaipan/android/utils/f;->g:I

    iput p1, p0, Lcn/kuaipan/android/utils/f;->o:I

    goto :goto_7e

    .line 989
    :cond_5f
    iget-boolean p1, p0, Lcn/kuaipan/android/utils/f;->q:Z

    if-eqz p1, :cond_66

    const-string v1, "skipped!"

    goto :goto_7e

    :cond_66
    if-nez v3, :cond_73

    .line 992
    iget-object p1, p0, Lcn/kuaipan/android/utils/f;->c:Lcn/kuaipan/android/utils/s;

    iget-object v1, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v2, p0, Lcn/kuaipan/android/utils/f;->g:I

    invoke-virtual {p1, v1, v2, v0}, Lcn/kuaipan/android/utils/s;->a([CII)Ljava/lang/String;

    move-result-object v1

    goto :goto_7e

    .line 994
    :cond_73
    iget-object p1, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v1, p0, Lcn/kuaipan/android/utils/f;->g:I

    invoke-virtual {v3, p1, v1, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 997
    :goto_7e
    iget p1, p0, Lcn/kuaipan/android/utils/f;->p:I

    add-int/2addr p1, v0

    iput p1, p0, Lcn/kuaipan/android/utils/f;->p:I

    .line 998
    iget p1, p0, Lcn/kuaipan/android/utils/f;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcn/kuaipan/android/utils/f;->g:I

    return-object v1

    nop

    :sswitch_data_8a
    .sparse-switch
        0x9 -> :sswitch_35
        0xa -> :sswitch_35
        0xc -> :sswitch_35
        0xd -> :sswitch_35
        0x20 -> :sswitch_35
        0x23 -> :sswitch_1d
        0x2c -> :sswitch_35
        0x2f -> :sswitch_1d
        0x3a -> :sswitch_35
        0x3b -> :sswitch_1d
        0x3d -> :sswitch_1d
        0x5b -> :sswitch_35
        0x5c -> :sswitch_1d
        0x5d -> :sswitch_35
        0x7b -> :sswitch_35
        0x7d -> :sswitch_35
    .end sparse-switch
.end method

.method private p()Lcn/kuaipan/android/utils/h;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->g()Lcn/kuaipan/android/utils/h;

    .line 378
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    const/4 v1, 0x0

    .line 379
    iput-object v1, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    .line 380
    iput-object v1, p0, Lcn/kuaipan/android/utils/f;->n:Ljava/lang/String;

    .line 381
    iput-object v1, p0, Lcn/kuaipan/android/utils/f;->m:Ljava/lang/String;

    return-object v0
.end method

.method private q()Lcn/kuaipan/android/utils/g;
    .registers 3

    .line 571
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->k:Ljava/util/List;

    iget-object v1, p0, Lcn/kuaipan/android/utils/f;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuaipan/android/utils/g;

    return-object v0
.end method

.method private r()Lcn/kuaipan/android/utils/g;
    .registers 3

    .line 575
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->k:Ljava/util/List;

    iget-object v1, p0, Lcn/kuaipan/android/utils/f;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuaipan/android/utils/g;

    return-object v0
.end method

.method private s()Lcn/kuaipan/android/utils/h;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 681
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->w()I

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_33

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_2c

    .line 685
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->x()V

    .line 686
    iget v0, p0, Lcn/kuaipan/android/utils/f;->g:I

    iget v1, p0, Lcn/kuaipan/android/utils/f;->h:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1c

    invoke-direct {p0, v2}, Lcn/kuaipan/android/utils/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_1c
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v1, p0, Lcn/kuaipan/android/utils/f;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_33

    .line 687
    iget v0, p0, Lcn/kuaipan/android/utils/f;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lcn/kuaipan/android/utils/f;->g:I

    goto :goto_33

    :cond_2c
    const-string v0, "Expected \':\'"

    .line 691
    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/f;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 694
    :cond_33
    :goto_33
    sget-object v0, Lcn/kuaipan/android/utils/g;->e:Lcn/kuaipan/android/utils/g;

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/f;->b(Lcn/kuaipan/android/utils/g;)V

    .line 695
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->t()Lcn/kuaipan/android/utils/h;

    move-result-object v0

    return-object v0
.end method

.method private t()Lcn/kuaipan/android/utils/h;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 699
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->w()I

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_36

    const/16 v1, 0x27

    if-eq v0, v1, :cond_33

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_29

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_1f

    .line 716
    iget v0, p0, Lcn/kuaipan/android/utils/f;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/kuaipan/android/utils/f;->g:I

    .line 717
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->A()Lcn/kuaipan/android/utils/h;

    move-result-object v0

    return-object v0

    .line 702
    :cond_1f
    sget-object v0, Lcn/kuaipan/android/utils/g;->c:Lcn/kuaipan/android/utils/g;

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/f;->a(Lcn/kuaipan/android/utils/g;)V

    .line 703
    sget-object v0, Lcn/kuaipan/android/utils/h;->c:Lcn/kuaipan/android/utils/h;

    iput-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    return-object v0

    .line 706
    :cond_29
    sget-object v0, Lcn/kuaipan/android/utils/g;->a:Lcn/kuaipan/android/utils/g;

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/f;->a(Lcn/kuaipan/android/utils/g;)V

    .line 707
    sget-object v0, Lcn/kuaipan/android/utils/h;->a:Lcn/kuaipan/android/utils/h;

    iput-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    return-object v0

    .line 710
    :cond_33
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->x()V

    :cond_36
    int-to-char v0, v0

    .line 712
    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/f;->a(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/utils/f;->n:Ljava/lang/String;

    .line 713
    sget-object v0, Lcn/kuaipan/android/utils/h;->f:Lcn/kuaipan/android/utils/h;

    iput-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    return-object v0
.end method

.method private u()I
    .registers 5

    .line 764
    iget v0, p0, Lcn/kuaipan/android/utils/f;->i:I

    const/4 v1, 0x0

    .line 765
    :goto_3
    iget v2, p0, Lcn/kuaipan/android/utils/f;->g:I

    if-ge v1, v2, :cond_14

    .line 766
    iget-object v2, p0, Lcn/kuaipan/android/utils/f;->f:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    add-int/lit8 v0, v0, 0x1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_14
    return v0
.end method

.method private v()I
    .registers 5

    .line 774
    iget v0, p0, Lcn/kuaipan/android/utils/f;->j:I

    const/4 v1, 0x0

    .line 775
    :goto_3
    iget v2, p0, Lcn/kuaipan/android/utils/f;->g:I

    if-ge v1, v2, :cond_16

    .line 776
    iget-object v2, p0, Lcn/kuaipan/android/utils/f;->f:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    const/4 v0, 0x1

    goto :goto_13

    :cond_11
    add-int/lit8 v0, v0, 0x1

    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_16
    return v0
.end method

.method private w()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 786
    :cond_0
    :goto_0
    :pswitch_0
    iget v0, p0, Lcn/kuaipan/android/utils/f;->g:I

    iget v1, p0, Lcn/kuaipan/android/utils/f;->h:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_16

    invoke-direct {p0, v2}, Lcn/kuaipan/android/utils/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_16

    .line 837
    :cond_e
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of input"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_16
    :goto_16
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v1, p0, Lcn/kuaipan/android/utils/f;->g:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcn/kuaipan/android/utils/f;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_75

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_34

    packed-switch v0, :pswitch_data_7c

    return v0

    .line 796
    :cond_34
    iget v3, p0, Lcn/kuaipan/android/utils/f;->g:I

    iget v4, p0, Lcn/kuaipan/android/utils/f;->h:I

    if-ne v3, v4, :cond_41

    invoke-direct {p0, v2}, Lcn/kuaipan/android/utils/f;->a(I)Z

    move-result v3

    if-nez v3, :cond_41

    return v0

    .line 800
    :cond_41
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->x()V

    .line 801
    iget-object v3, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v4, p0, Lcn/kuaipan/android/utils/f;->g:I

    aget-char v3, v3, v4

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_5a

    if-eq v3, v1, :cond_51

    return v0

    .line 814
    :cond_51
    iget v0, p0, Lcn/kuaipan/android/utils/f;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lcn/kuaipan/android/utils/f;->g:I

    .line 815
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->y()V

    goto :goto_0

    .line 805
    :cond_5a
    iget v0, p0, Lcn/kuaipan/android/utils/f;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lcn/kuaipan/android/utils/f;->g:I

    const-string v0, "*/"

    .line 806
    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 809
    iget v0, p0, Lcn/kuaipan/android/utils/f;->g:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/kuaipan/android/utils/f;->g:I

    goto :goto_0

    :cond_6e
    const-string v0, "Unterminated comment"

    .line 807
    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/f;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 828
    :cond_75
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->x()V

    .line 829
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->y()V

    goto :goto_0

    :pswitch_data_7c
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private x()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 841
    iget-boolean v0, p0, Lcn/kuaipan/android/utils/f;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    .line 842
    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/f;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private y()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 852
    :cond_0
    iget v0, p0, Lcn/kuaipan/android/utils/f;->g:I

    iget v1, p0, Lcn/kuaipan/android/utils/f;->h:I

    if-lt v0, v1, :cond_d

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 853
    :cond_d
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v1, p0, Lcn/kuaipan/android/utils/f;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/kuaipan/android/utils/f;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1f

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    :cond_1f
    return-void
.end method

.method private z()C
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1017
    iget v0, p0, Lcn/kuaipan/android/utils/f;->g:I

    iget v1, p0, Lcn/kuaipan/android/utils/f;->h:I

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_15

    :cond_e
    const-string v0, "Unterminated escape sequence"

    .line 1018
    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/f;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1021
    :cond_15
    :goto_15
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v1, p0, Lcn/kuaipan/android/utils/f;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/kuaipan/android/utils/f;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x62

    if-eq v0, v1, :cond_6c

    const/16 v1, 0x66

    if-eq v0, v1, :cond_69

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_66

    const/16 v1, 0x72

    if-eq v0, v1, :cond_63

    packed-switch v0, :pswitch_data_70

    return v0

    .line 1024
    :pswitch_33
    iget v0, p0, Lcn/kuaipan/android/utils/f;->g:I

    const/4 v1, 0x4

    add-int/2addr v0, v1

    iget v2, p0, Lcn/kuaipan/android/utils/f;->h:I

    if-le v0, v2, :cond_49

    invoke-direct {p0, v1}, Lcn/kuaipan/android/utils/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_49

    :cond_42
    const-string v0, "Unterminated escape sequence"

    .line 1025
    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/f;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1027
    :cond_49
    :goto_49
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->c:Lcn/kuaipan/android/utils/s;

    iget-object v2, p0, Lcn/kuaipan/android/utils/f;->f:[C

    iget v3, p0, Lcn/kuaipan/android/utils/f;->g:I

    invoke-virtual {v0, v2, v3, v1}, Lcn/kuaipan/android/utils/s;->a([CII)Ljava/lang/String;

    move-result-object v0

    .line 1028
    iget v2, p0, Lcn/kuaipan/android/utils/f;->g:I

    add-int/2addr v2, v1

    iput v2, p0, Lcn/kuaipan/android/utils/f;->g:I

    const/16 v1, 0x10

    .line 1029
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    return v0

    :pswitch_60
    const/16 v0, 0x9

    return v0

    :cond_63
    const/16 v0, 0xd

    return v0

    :cond_66
    const/16 v0, 0xa

    return v0

    :cond_69
    const/16 v0, 0xc

    return v0

    :cond_6c
    const/16 v0, 0x8

    return v0

    nop

    :pswitch_data_70
    .packed-switch 0x74
        :pswitch_60
        :pswitch_33
    .end packed-switch
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    .line 266
    iput-boolean p1, p0, Lcn/kuaipan/android/utils/f;->e:Z

    return-void
.end method

.method public a()Z
    .registers 2

    .line 273
    iget-boolean v0, p0, Lcn/kuaipan/android/utils/f;->e:Z

    return v0
.end method

.method public b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    sget-object v0, Lcn/kuaipan/android/utils/h;->a:Lcn/kuaipan/android/utils/h;

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/f;->a(Lcn/kuaipan/android/utils/h;)V

    return-void
.end method

.method public c()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    sget-object v0, Lcn/kuaipan/android/utils/h;->b:Lcn/kuaipan/android/utils/h;

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/f;->a(Lcn/kuaipan/android/utils/h;)V

    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 541
    iput-object v0, p0, Lcn/kuaipan/android/utils/f;->n:Ljava/lang/String;

    .line 542
    iput-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    .line 543
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 544
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->k:Ljava/util/List;

    sget-object v1, Lcn/kuaipan/android/utils/g;->h:Lcn/kuaipan/android/utils/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->d:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public d()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    sget-object v0, Lcn/kuaipan/android/utils/h;->c:Lcn/kuaipan/android/utils/h;

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/f;->a(Lcn/kuaipan/android/utils/h;)V

    return-void
.end method

.method public e()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    sget-object v0, Lcn/kuaipan/android/utils/h;->d:Lcn/kuaipan/android/utils/h;

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/f;->a(Lcn/kuaipan/android/utils/h;)V

    return-void
.end method

.method public f()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->g()Lcn/kuaipan/android/utils/h;

    .line 324
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    sget-object v1, Lcn/kuaipan/android/utils/h;->d:Lcn/kuaipan/android/utils/h;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    sget-object v1, Lcn/kuaipan/android/utils/h;->b:Lcn/kuaipan/android/utils/h;

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public g()Lcn/kuaipan/android/utils/h;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    if-eqz v0, :cond_7

    .line 332
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    return-object v0

    .line 335
    :cond_7
    sget-object v0, Lcn/kuaipan/android/utils/JsonReader$1;->a:[I

    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->q()Lcn/kuaipan/android/utils/g;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuaipan/android/utils/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_88

    .line 368
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 366
    :pswitch_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :pswitch_26
    :try_start_26
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->t()Lcn/kuaipan/android/utils/h;

    move-result-object v0

    .line 357
    iget-boolean v1, p0, Lcn/kuaipan/android/utils/f;->e:Z

    if-eqz v1, :cond_2f

    return-object v0

    :cond_2f
    const-string v0, "Expected EOF"

    .line 360
    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/f;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_36
    .catch Ljava/io/EOFException; {:try_start_26 .. :try_end_36} :catch_36

    .line 362
    :catch_36
    sget-object v0, Lcn/kuaipan/android/utils/h;->j:Lcn/kuaipan/android/utils/h;

    iput-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    return-object v0

    .line 353
    :pswitch_3b
    invoke-direct {p0, v1}, Lcn/kuaipan/android/utils/f;->c(Z)Lcn/kuaipan/android/utils/h;

    move-result-object v0

    return-object v0

    .line 351
    :pswitch_40
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->s()Lcn/kuaipan/android/utils/h;

    move-result-object v0

    return-object v0

    .line 349
    :pswitch_45
    invoke-direct {p0, v2}, Lcn/kuaipan/android/utils/f;->c(Z)Lcn/kuaipan/android/utils/h;

    move-result-object v0

    return-object v0

    .line 347
    :pswitch_4a
    invoke-direct {p0, v1}, Lcn/kuaipan/android/utils/f;->b(Z)Lcn/kuaipan/android/utils/h;

    move-result-object v0

    return-object v0

    .line 345
    :pswitch_4f
    invoke-direct {p0, v2}, Lcn/kuaipan/android/utils/f;->b(Z)Lcn/kuaipan/android/utils/h;

    move-result-object v0

    return-object v0

    .line 337
    :pswitch_54
    sget-object v0, Lcn/kuaipan/android/utils/g;->g:Lcn/kuaipan/android/utils/g;

    invoke-direct {p0, v0}, Lcn/kuaipan/android/utils/f;->b(Lcn/kuaipan/android/utils/g;)V

    .line 338
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->t()Lcn/kuaipan/android/utils/h;

    move-result-object v0

    .line 339
    iget-boolean v1, p0, Lcn/kuaipan/android/utils/f;->e:Z

    if-nez v1, :cond_87

    iget-object v1, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    sget-object v2, Lcn/kuaipan/android/utils/h;->a:Lcn/kuaipan/android/utils/h;

    if-eq v1, v2, :cond_87

    iget-object v1, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    sget-object v2, Lcn/kuaipan/android/utils/h;->c:Lcn/kuaipan/android/utils/h;

    if-ne v1, v2, :cond_6e

    goto :goto_87

    .line 340
    :cond_6e
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_87
    :goto_87
    return-object v0

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_54
        :pswitch_4f
        :pswitch_4a
        :pswitch_45
        :pswitch_40
        :pswitch_3b
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method

.method public h()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->g()Lcn/kuaipan/android/utils/h;

    .line 394
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    sget-object v1, Lcn/kuaipan/android/utils/h;->e:Lcn/kuaipan/android/utils/h;

    if-ne v0, v1, :cond_f

    .line 397
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->m:Ljava/lang/String;

    .line 398
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->p()Lcn/kuaipan/android/utils/h;

    return-object v0

    .line 395
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->g()Lcn/kuaipan/android/utils/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->g()Lcn/kuaipan/android/utils/h;

    .line 412
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    sget-object v1, Lcn/kuaipan/android/utils/h;->f:Lcn/kuaipan/android/utils/h;

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    sget-object v1, Lcn/kuaipan/android/utils/h;->g:Lcn/kuaipan/android/utils/h;

    if-ne v0, v1, :cond_10

    goto :goto_2b

    .line 413
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a string but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->g()Lcn/kuaipan/android/utils/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->n:Ljava/lang/String;

    .line 417
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->p()Lcn/kuaipan/android/utils/h;

    return-object v0
.end method

.method public j()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->g()Lcn/kuaipan/android/utils/h;

    .line 430
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    sget-object v1, Lcn/kuaipan/android/utils/h;->h:Lcn/kuaipan/android/utils/h;

    if-ne v0, v1, :cond_16

    .line 434
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->n:Ljava/lang/String;

    const-string v1, "true"

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 435
    :goto_12
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->p()Lcn/kuaipan/android/utils/h;

    return v0

    .line 431
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->g()Lcn/kuaipan/android/utils/h;

    .line 448
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    sget-object v1, Lcn/kuaipan/android/utils/h;->i:Lcn/kuaipan/android/utils/h;

    if-ne v0, v1, :cond_d

    .line 452
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->p()Lcn/kuaipan/android/utils/h;

    return-void

    .line 449
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l()D
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->g()Lcn/kuaipan/android/utils/h;

    .line 464
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    sget-object v1, Lcn/kuaipan/android/utils/h;->f:Lcn/kuaipan/android/utils/h;

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    sget-object v1, Lcn/kuaipan/android/utils/h;->g:Lcn/kuaipan/android/utils/h;

    if-ne v0, v1, :cond_10

    goto :goto_29

    .line 465
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a double but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_29
    :goto_29
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 469
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->p()Lcn/kuaipan/android/utils/h;

    return-wide v0
.end method

.method public m()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 484
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->g()Lcn/kuaipan/android/utils/h;

    .line 485
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    sget-object v1, Lcn/kuaipan/android/utils/h;->f:Lcn/kuaipan/android/utils/h;

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    sget-object v1, Lcn/kuaipan/android/utils/h;->g:Lcn/kuaipan/android/utils/h;

    if-ne v0, v1, :cond_10

    goto :goto_29

    .line 486
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a long but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_29
    :goto_29
    :try_start_29
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2f} :catch_30

    goto :goto_3d

    .line 493
    :catch_30
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v2, v0

    long-to-double v4, v2

    cmpl-double v0, v4, v0

    if-nez v0, :cond_41

    move-wide v0, v2

    .line 501
    :goto_3d
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->p()Lcn/kuaipan/android/utils/h;

    return-wide v0

    .line 497
    :cond_41
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcn/kuaipan/android/utils/f;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    invoke-virtual {p0}, Lcn/kuaipan/android/utils/f;->g()Lcn/kuaipan/android/utils/h;

    .line 517
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    sget-object v1, Lcn/kuaipan/android/utils/h;->f:Lcn/kuaipan/android/utils/h;

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    sget-object v1, Lcn/kuaipan/android/utils/h;->g:Lcn/kuaipan/android/utils/h;

    if-ne v0, v1, :cond_10

    goto :goto_29

    .line 518
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/kuaipan/android/utils/f;->l:Lcn/kuaipan/android/utils/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_29
    :goto_29
    :try_start_29
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2f} :catch_30

    goto :goto_3d

    .line 525
    :catch_30
    iget-object v0, p0, Lcn/kuaipan/android/utils/f;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v2, v0

    int-to-double v3, v2

    cmpl-double v0, v3, v0

    if-nez v0, :cond_41

    move v0, v2

    .line 533
    :goto_3d
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->p()Lcn/kuaipan/android/utils/h;

    return v0

    .line 529
    :cond_41
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcn/kuaipan/android/utils/f;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 554
    iput-boolean v0, p0, Lcn/kuaipan/android/utils/f;->q:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 558
    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->p()Lcn/kuaipan/android/utils/h;

    move-result-object v2

    .line 559
    sget-object v3, Lcn/kuaipan/android/utils/h;->a:Lcn/kuaipan/android/utils/h;

    if-eq v2, v3, :cond_1d

    sget-object v3, Lcn/kuaipan/android/utils/h;->c:Lcn/kuaipan/android/utils/h;

    if-ne v2, v3, :cond_12

    goto :goto_1d

    .line 561
    :cond_12
    sget-object v3, Lcn/kuaipan/android/utils/h;->b:Lcn/kuaipan/android/utils/h;

    if-eq v2, v3, :cond_1a

    sget-object v3, Lcn/kuaipan/android/utils/h;->d:Lcn/kuaipan/android/utils/h;
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_24

    if-ne v2, v3, :cond_1f

    :cond_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    :cond_1d
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    :cond_1f
    :goto_1f
    if-nez v1, :cond_5

    .line 566
    iput-boolean v0, p0, Lcn/kuaipan/android/utils/f;->q:Z

    return-void

    :catchall_24
    move-exception v1

    iput-boolean v0, p0, Lcn/kuaipan/android/utils/f;->q:Z

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " near "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/kuaipan/android/utils/f;->C()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

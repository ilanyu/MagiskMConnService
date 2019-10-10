.class public final Lcom/google/protobuf/micro/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I = 0x0

.field static final b:I = 0x1

.field static final c:I = 0x2

.field static final d:I = 0x3

.field static final e:I = 0x4

.field static final f:I = 0x5

.field static final g:I = 0x3

.field static final h:I = 0x7

.field static final i:I = 0x1

.field static final j:I = 0x2

.field static final k:I = 0x3

.field static final l:I

.field static final m:I

.field static final n:I

.field static final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 80
    invoke-static {v1, v0}, Lcom/google/protobuf/micro/e;->a(II)I

    move-result v2

    sput v2, Lcom/google/protobuf/micro/e;->l:I

    const/4 v2, 0x4

    .line 82
    invoke-static {v1, v2}, Lcom/google/protobuf/micro/e;->a(II)I

    move-result v1

    sput v1, Lcom/google/protobuf/micro/e;->m:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 84
    invoke-static {v1, v2}, Lcom/google/protobuf/micro/e;->a(II)I

    move-result v2

    sput v2, Lcom/google/protobuf/micro/e;->n:I

    .line 86
    invoke-static {v0, v1}, Lcom/google/protobuf/micro/e;->a(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/micro/e;->o:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)I
    .registers 1

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method static a(II)I
    .registers 2

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method public static b(I)I
    .registers 1

    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method

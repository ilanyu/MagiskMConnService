.class public Lcom/xiaomi/accountsdk/utils/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/xiaomi/accountsdk/utils/q;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:Lcom/xiaomi/accountsdk/utils/q;

.field private static final e:Ljava/util/regex/Pattern;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^(\\d)\\.(\\d{1,2})\\.(\\d{1,2})$"

    .line 17
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/utils/q;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/xiaomi/accountsdk/utils/q;->a:I

    .line 22
    iput p2, p0, Lcom/xiaomi/accountsdk/utils/q;->b:I

    .line 23
    iput p3, p0, Lcom/xiaomi/accountsdk/utils/q;->c:I

    return-void
.end method

.method public static a()Lcom/xiaomi/accountsdk/utils/q;
    .registers 5

    .line 35
    sget-object v0, Lcom/xiaomi/accountsdk/utils/q;->d:Lcom/xiaomi/accountsdk/utils/q;

    if-eqz v0, :cond_7

    .line 36
    sget-object v0, Lcom/xiaomi/accountsdk/utils/q;->d:Lcom/xiaomi/accountsdk/utils/q;

    return-object v0

    .line 39
    :cond_7
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    .line 44
    :cond_d
    sget-object v2, Lcom/xiaomi/accountsdk/utils/q;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1a

    return-object v1

    .line 49
    :cond_1a
    new-instance v1, Lcom/xiaomi/accountsdk/utils/q;

    const/4 v2, 0x1

    .line 50
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    .line 51
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    .line 52
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/q;-><init>(III)V

    .line 55
    sput-object v1, Lcom/xiaomi/accountsdk/utils/q;->d:Lcom/xiaomi/accountsdk/utils/q;

    return-object v1
.end method

.method public static a(Lcom/xiaomi/accountsdk/utils/q;Z)Z
    .registers 3

    .line 27
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/q;->a()Lcom/xiaomi/accountsdk/utils/q;

    move-result-object v0

    if-nez v0, :cond_7

    return p1

    .line 31
    :cond_7
    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/q;->a(Lcom/xiaomi/accountsdk/utils/q;)I

    move-result p0

    if-gez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private b()I
    .registers 3

    .line 89
    iget v0, p0, Lcom/xiaomi/accountsdk/utils/q;->c:I

    iget v1, p0, Lcom/xiaomi/accountsdk/utils/q;->b:I

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    iget v1, p0, Lcom/xiaomi/accountsdk/utils/q;->a:I

    mul-int/lit16 v1, v1, 0x2710

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a(Lcom/xiaomi/accountsdk/utils/q;)I
    .registers 3

    if-eqz p1, :cond_c

    .line 85
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/utils/q;->b()I

    move-result v0

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/utils/q;->b()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    .line 83
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "another == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 8
    check-cast p1, Lcom/xiaomi/accountsdk/utils/q;

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/utils/q;->a(Lcom/xiaomi/accountsdk/utils/q;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 63
    :cond_4
    instance-of v1, p1, Lcom/xiaomi/accountsdk/utils/q;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 65
    :cond_a
    check-cast p1, Lcom/xiaomi/accountsdk/utils/q;

    .line 67
    iget v1, p0, Lcom/xiaomi/accountsdk/utils/q;->a:I

    iget v3, p1, Lcom/xiaomi/accountsdk/utils/q;->a:I

    if-eq v1, v3, :cond_13

    return v2

    .line 68
    :cond_13
    iget v1, p0, Lcom/xiaomi/accountsdk/utils/q;->b:I

    iget v3, p1, Lcom/xiaomi/accountsdk/utils/q;->b:I

    if-eq v1, v3, :cond_1a

    return v2

    .line 69
    :cond_1a
    iget v1, p0, Lcom/xiaomi/accountsdk/utils/q;->c:I

    iget p1, p1, Lcom/xiaomi/accountsdk/utils/q;->c:I

    if-ne v1, p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 74
    iget v0, p0, Lcom/xiaomi/accountsdk/utils/q;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 75
    iget v1, p0, Lcom/xiaomi/accountsdk/utils/q;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 76
    iget v1, p0, Lcom/xiaomi/accountsdk/utils/q;->c:I

    add-int/2addr v0, v1

    return v0
.end method

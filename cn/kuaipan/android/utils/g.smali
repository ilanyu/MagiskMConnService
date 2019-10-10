.class final enum Lcn/kuaipan/android/utils/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/kuaipan/android/utils/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/kuaipan/android/utils/g;

.field public static final enum b:Lcn/kuaipan/android/utils/g;

.field public static final enum c:Lcn/kuaipan/android/utils/g;

.field public static final enum d:Lcn/kuaipan/android/utils/g;

.field public static final enum e:Lcn/kuaipan/android/utils/g;

.field public static final enum f:Lcn/kuaipan/android/utils/g;

.field public static final enum g:Lcn/kuaipan/android/utils/g;

.field public static final enum h:Lcn/kuaipan/android/utils/g;

.field private static final synthetic i:[Lcn/kuaipan/android/utils/g;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 28
    new-instance v0, Lcn/kuaipan/android/utils/g;

    const-string v1, "EMPTY_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/kuaipan/android/utils/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/android/utils/g;->a:Lcn/kuaipan/android/utils/g;

    .line 34
    new-instance v0, Lcn/kuaipan/android/utils/g;

    const-string v1, "NONEMPTY_ARRAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcn/kuaipan/android/utils/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/android/utils/g;->b:Lcn/kuaipan/android/utils/g;

    .line 40
    new-instance v0, Lcn/kuaipan/android/utils/g;

    const-string v1, "EMPTY_OBJECT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcn/kuaipan/android/utils/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/android/utils/g;->c:Lcn/kuaipan/android/utils/g;

    .line 46
    new-instance v0, Lcn/kuaipan/android/utils/g;

    const-string v1, "DANGLING_NAME"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcn/kuaipan/android/utils/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/android/utils/g;->d:Lcn/kuaipan/android/utils/g;

    .line 52
    new-instance v0, Lcn/kuaipan/android/utils/g;

    const-string v1, "NONEMPTY_OBJECT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcn/kuaipan/android/utils/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/android/utils/g;->e:Lcn/kuaipan/android/utils/g;

    .line 57
    new-instance v0, Lcn/kuaipan/android/utils/g;

    const-string v1, "EMPTY_DOCUMENT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcn/kuaipan/android/utils/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/android/utils/g;->f:Lcn/kuaipan/android/utils/g;

    .line 62
    new-instance v0, Lcn/kuaipan/android/utils/g;

    const-string v1, "NONEMPTY_DOCUMENT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcn/kuaipan/android/utils/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/android/utils/g;->g:Lcn/kuaipan/android/utils/g;

    .line 67
    new-instance v0, Lcn/kuaipan/android/utils/g;

    const-string v1, "CLOSED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcn/kuaipan/android/utils/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/android/utils/g;->h:Lcn/kuaipan/android/utils/g;

    const/16 v0, 0x8

    .line 22
    new-array v0, v0, [Lcn/kuaipan/android/utils/g;

    sget-object v1, Lcn/kuaipan/android/utils/g;->a:Lcn/kuaipan/android/utils/g;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuaipan/android/utils/g;->b:Lcn/kuaipan/android/utils/g;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuaipan/android/utils/g;->c:Lcn/kuaipan/android/utils/g;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuaipan/android/utils/g;->d:Lcn/kuaipan/android/utils/g;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuaipan/android/utils/g;->e:Lcn/kuaipan/android/utils/g;

    aput-object v1, v0, v6

    sget-object v1, Lcn/kuaipan/android/utils/g;->f:Lcn/kuaipan/android/utils/g;

    aput-object v1, v0, v7

    sget-object v1, Lcn/kuaipan/android/utils/g;->g:Lcn/kuaipan/android/utils/g;

    aput-object v1, v0, v8

    sget-object v1, Lcn/kuaipan/android/utils/g;->h:Lcn/kuaipan/android/utils/g;

    aput-object v1, v0, v9

    sput-object v0, Lcn/kuaipan/android/utils/g;->i:[Lcn/kuaipan/android/utils/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuaipan/android/utils/g;
    .registers 2

    .line 22
    const-class v0, Lcn/kuaipan/android/utils/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/kuaipan/android/utils/g;

    return-object p0
.end method

.method public static values()[Lcn/kuaipan/android/utils/g;
    .registers 1

    .line 22
    sget-object v0, Lcn/kuaipan/android/utils/g;->i:[Lcn/kuaipan/android/utils/g;

    invoke-virtual {v0}, [Lcn/kuaipan/android/utils/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuaipan/android/utils/g;

    return-object v0
.end method

.class public final enum Lcn/kuaipan/kss/KssDef$KssAPIResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/kss/KssDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KssAPIResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/kuaipan/kss/KssDef$KssAPIResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

.field public static final enum b:Lcn/kuaipan/kss/KssDef$KssAPIResult;

.field public static final enum c:Lcn/kuaipan/kss/KssDef$KssAPIResult;

.field public static final enum d:Lcn/kuaipan/kss/KssDef$KssAPIResult;

.field public static final enum e:Lcn/kuaipan/kss/KssDef$KssAPIResult;

.field public static final enum f:Lcn/kuaipan/kss/KssDef$KssAPIResult;

.field public static final enum g:Lcn/kuaipan/kss/KssDef$KssAPIResult;

.field public static final enum h:Lcn/kuaipan/kss/KssDef$KssAPIResult;

.field private static final synthetic i:[Lcn/kuaipan/kss/KssDef$KssAPIResult;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 18
    new-instance v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/kuaipan/kss/KssDef$KssAPIResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 19
    new-instance v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const-string v1, "Error"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcn/kuaipan/kss/KssDef$KssAPIResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->b:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 20
    new-instance v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const-string v1, "Cancel"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcn/kuaipan/kss/KssDef$KssAPIResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->c:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 21
    new-instance v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const-string v1, "NetTimeout"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcn/kuaipan/kss/KssDef$KssAPIResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->d:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 22
    new-instance v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const-string v1, "NeedRequest"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcn/kuaipan/kss/KssDef$KssAPIResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->e:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 23
    new-instance v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const-string v1, "DataCorrupted"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcn/kuaipan/kss/KssDef$KssAPIResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->f:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 24
    new-instance v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const-string v1, "SpaceOver"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcn/kuaipan/kss/KssDef$KssAPIResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->g:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 25
    new-instance v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const-string v1, "ServerDenyReadOnly"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcn/kuaipan/kss/KssDef$KssAPIResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->h:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    const/16 v0, 0x8

    .line 17
    new-array v0, v0, [Lcn/kuaipan/kss/KssDef$KssAPIResult;

    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->a:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->b:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->c:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->d:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->e:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    aput-object v1, v0, v6

    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->f:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    aput-object v1, v0, v7

    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->g:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    aput-object v1, v0, v8

    sget-object v1, Lcn/kuaipan/kss/KssDef$KssAPIResult;->h:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    aput-object v1, v0, v9

    sput-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->i:[Lcn/kuaipan/kss/KssDef$KssAPIResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .registers 2

    .line 17
    const-class v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/kuaipan/kss/KssDef$KssAPIResult;

    return-object p0
.end method

.method public static values()[Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .registers 1

    .line 17
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->i:[Lcn/kuaipan/kss/KssDef$KssAPIResult;

    invoke-virtual {v0}, [Lcn/kuaipan/kss/KssDef$KssAPIResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuaipan/kss/KssDef$KssAPIResult;

    return-object v0
.end method
